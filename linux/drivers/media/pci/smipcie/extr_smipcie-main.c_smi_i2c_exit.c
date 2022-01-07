
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smi_dev {int * i2c_bus; } ;


 int i2c_del_adapter (int *) ;

__attribute__((used)) static void smi_i2c_exit(struct smi_dev *dev)
{
 i2c_del_adapter(&dev->i2c_bus[0]);
 i2c_del_adapter(&dev->i2c_bus[1]);
}
