
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mantis_pci {int adapter; } ;


 int MANTIS_DEBUG ;
 int MANTIS_INT_I2CDONE ;
 int dprintk (int ,int,char*) ;
 int i2c_del_adapter (int *) ;
 int mantis_mask_ints (struct mantis_pci*,int ) ;

int mantis_i2c_exit(struct mantis_pci *mantis)
{
 dprintk(MANTIS_DEBUG, 1, "Disabling I2C interrupt");
 mantis_mask_ints(mantis, MANTIS_INT_I2CDONE);

 dprintk(MANTIS_DEBUG, 1, "Removing I2C adapter");
 i2c_del_adapter(&mantis->adapter);

 return 0;
}
