# Use the official Nginx image as the base
FROM nginx:alpine

# Remove the default Nginx configuration and website
RUN rm /etc/nginx/conf.d/default.conf
RUN rm -rf /usr/share/nginx/html/*

# Copy our Nginx configuration
COPY nginx.conf /etc/nginx/conf.d/

# Copy the content of our website
COPY index.html/ /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
