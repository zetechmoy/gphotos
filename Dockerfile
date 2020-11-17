FROM node:latest
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
RUN git clone https://github.com/zetechmoy/photo-gallery-api .
RUN npm install
COPY . .
EXPOSE 4000
CMD ["npm", "start"]
