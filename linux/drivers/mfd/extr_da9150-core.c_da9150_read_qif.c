
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct da9150 {int dev; int core_qif; } ;


 int da9150_i2c_read_device (int ,int ,int,int *) ;
 int dev_err (int ,char*,int ,int) ;

void da9150_read_qif(struct da9150 *da9150, u8 addr, int count, u8 *buf)
{
 int ret;

 ret = da9150_i2c_read_device(da9150->core_qif, addr, count, buf);
 if (ret < 0)
  dev_err(da9150->dev, "Failed to read from QIF 0x%x: %d\n",
   addr, ret);
}
