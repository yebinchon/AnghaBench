
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct da9150 {int dev; int regmap; } ;


 int dev_err (int ,char*,int ,int) ;
 int regmap_raw_write (int ,int ,int const*,int) ;

void da9150_bulk_write(struct da9150 *da9150, u16 reg, int count, const u8 *buf)
{
 int ret;

 ret = regmap_raw_write(da9150->regmap, reg, buf, count);
 if (ret)
  dev_err(da9150->dev, "Failed to bulk write to reg 0x%x %d\n",
   reg, ret);
}
