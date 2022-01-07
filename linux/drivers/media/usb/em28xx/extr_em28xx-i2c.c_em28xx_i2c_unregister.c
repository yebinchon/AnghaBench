
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em28xx {int * i2c_adap; } ;


 int ENODEV ;
 unsigned int NUM_I2C_BUSES ;
 int i2c_del_adapter (int *) ;

int em28xx_i2c_unregister(struct em28xx *dev, unsigned int bus)
{
 if (bus >= NUM_I2C_BUSES)
  return -ENODEV;

 i2c_del_adapter(&dev->i2c_adap[bus]);
 return 0;
}
