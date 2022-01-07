
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx231xx {int * ir_i2c_client; } ;


 int i2c_unregister_device (int *) ;

void cx231xx_ir_exit(struct cx231xx *dev)
{
 if (dev->ir_i2c_client)
  i2c_unregister_device(dev->ir_i2c_client);
 dev->ir_i2c_client = ((void*)0);
}
