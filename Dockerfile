FROM node:18
WORKDIR /app
COPY . .
RUN yarn install --frozen-lockfile
RUN yarn build
ENV PORT=3000
EXPOSE 3000
CMD ["node", "./build/server/index.js", "--services=web,authentication"]
