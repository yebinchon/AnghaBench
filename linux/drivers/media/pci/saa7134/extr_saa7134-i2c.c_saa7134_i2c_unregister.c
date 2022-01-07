
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dev {int i2c_adap; } ;


 int i2c_del_adapter (int *) ;

int saa7134_i2c_unregister(struct saa7134_dev *dev)
{
 i2c_del_adapter(&dev->i2c_adap);
 return 0;
}
