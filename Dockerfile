FROM yasuoyuhao/node-docker-image-with-tini:12-alpine

# Build arguments
ARG app_version='1.0.1-r2'
ARG user_name='user'
ARG user_id='1087'
ARG group_name='mount'
ARG group_id='1087'

# Update package repositories and install packages
RUN apk update \
    && apk add \
    --no-cache \
    --update \
    ttf-freefont \
    python3 \
    py3-pip \
    poppler --repository=http://dl-cdn.alpinelinux.org/alpine/edge/main \
    inkscape=~"${app_version}" --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community \
    && rm -rf /var/lib/apt/lists/*