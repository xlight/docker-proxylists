FROM node:slim
RUN npm install -g proxy-lists http-server 
WORKDIR /www
EXPOSE 8000
CMD nohup proxy-lists getProxies --output-file="/www/proxy" &  http-server /www -p 8000
