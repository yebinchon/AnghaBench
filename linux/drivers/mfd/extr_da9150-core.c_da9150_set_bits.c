
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct da9150 {int dev; int regmap; } ;


 int dev_err (int ,char*,int ,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

void da9150_set_bits(struct da9150 *da9150, u16 reg, u8 mask, u8 val)
{
 int ret;

 ret = regmap_update_bits(da9150->regmap, reg, mask, val);
 if (ret)
  dev_err(da9150->dev, "Failed to set bits in reg 0x%x: %d\n",
   reg, ret);
}
