
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm6000_core {int i2c_adap; } ;


 int i2c_del_adapter (int *) ;

int tm6000_i2c_unregister(struct tm6000_core *dev)
{
 i2c_del_adapter(&dev->i2c_adap);
 return 0;
}
