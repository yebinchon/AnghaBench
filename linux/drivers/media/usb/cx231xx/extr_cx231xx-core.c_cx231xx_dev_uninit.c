
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx231xx {int * i2c_bus; } ;


 int cx231xx_i2c_mux_unregister (struct cx231xx*) ;
 int cx231xx_i2c_unregister (int *) ;

void cx231xx_dev_uninit(struct cx231xx *dev)
{

 cx231xx_i2c_mux_unregister(dev);
 cx231xx_i2c_unregister(&dev->i2c_bus[2]);
 cx231xx_i2c_unregister(&dev->i2c_bus[1]);
 cx231xx_i2c_unregister(&dev->i2c_bus[0]);
}
