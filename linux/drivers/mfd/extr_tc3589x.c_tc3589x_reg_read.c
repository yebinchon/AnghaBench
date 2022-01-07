
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tc3589x {int dev; int i2c; } ;


 int dev_err (int ,char*,int ,int) ;
 int i2c_smbus_read_byte_data (int ,int ) ;

int tc3589x_reg_read(struct tc3589x *tc3589x, u8 reg)
{
 int ret;

 ret = i2c_smbus_read_byte_data(tc3589x->i2c, reg);
 if (ret < 0)
  dev_err(tc3589x->dev, "failed to read reg %#x: %d\n",
   reg, ret);

 return ret;
}
