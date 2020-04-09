FROM docker:stable

LABEL version="1.0"
LABEL description="This Dockefile is used to build other docker images and push to AWS"

WORKDIR /awsinstall

RUN apk update && \
  apk upgrade && \
  apk add curl && \
  rm -rf /var/cache/apk/*

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
  unzip awscliv2.zip && \
  ./aws/install
