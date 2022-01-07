
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cx231xx {int gpio_i2c_lock; } ;


 int cx231xx_gpio_i2c_end (struct cx231xx*) ;
 int cx231xx_gpio_i2c_read_ack (struct cx231xx*) ;
 int cx231xx_gpio_i2c_read_byte (struct cx231xx*,int*) ;
 int cx231xx_gpio_i2c_start (struct cx231xx*) ;
 int cx231xx_gpio_i2c_write_ack (struct cx231xx*) ;
 int cx231xx_gpio_i2c_write_byte (struct cx231xx*,int) ;
 int cx231xx_gpio_i2c_write_nak (struct cx231xx*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int cx231xx_gpio_i2c_read(struct cx231xx *dev, u8 dev_addr, u8 *buf, u8 len)
{
 int status = 0;
 int i = 0;


 mutex_lock(&dev->gpio_i2c_lock);


 status = cx231xx_gpio_i2c_start(dev);


 status = cx231xx_gpio_i2c_write_byte(dev, (dev_addr << 1) + 1);


 status = cx231xx_gpio_i2c_read_ack(dev);


 for (i = 0; i < len; i++) {

  buf[i] = 0;
  status = cx231xx_gpio_i2c_read_byte(dev, &buf[i]);

  if ((i + 1) != len) {

   status = cx231xx_gpio_i2c_write_ack(dev);
  }
 }


 status = cx231xx_gpio_i2c_write_nak(dev);


 status = cx231xx_gpio_i2c_end(dev);


 mutex_unlock(&dev->gpio_i2c_lock);

 return status;
}
