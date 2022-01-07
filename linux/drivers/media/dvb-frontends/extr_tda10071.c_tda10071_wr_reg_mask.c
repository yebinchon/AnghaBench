
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tda10071_dev {int regmap; } ;


 int regmap_bulk_read (int ,int,int*,int) ;
 int regmap_bulk_write (int ,int,int*,int) ;

__attribute__((used)) static int tda10071_wr_reg_mask(struct tda10071_dev *dev,
    u8 reg, u8 val, u8 mask)
{
 int ret;
 u8 tmp;


 if (mask != 0xff) {
  ret = regmap_bulk_read(dev->regmap, reg, &tmp, 1);
  if (ret)
   return ret;

  val &= mask;
  tmp &= ~mask;
  val |= tmp;
 }

 return regmap_bulk_write(dev->regmap, reg, &val, 1);
}
