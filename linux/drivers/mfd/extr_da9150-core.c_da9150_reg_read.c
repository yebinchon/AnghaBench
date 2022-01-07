
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct da9150 {int dev; int regmap; } ;


 int dev_err (int ,char*,int ,int) ;
 int regmap_read (int ,int ,int*) ;

u8 da9150_reg_read(struct da9150 *da9150, u16 reg)
{
 int val, ret;

 ret = regmap_read(da9150->regmap, reg, &val);
 if (ret)
  dev_err(da9150->dev, "Failed to read from reg 0x%x: %d\n",
   reg, ret);

 return (u8) val;
}
