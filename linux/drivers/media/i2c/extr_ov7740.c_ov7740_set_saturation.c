
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int REG_USAT ;
 int REG_VSAT ;
 int regmap_write (struct regmap*,int ,unsigned char) ;

__attribute__((used)) static int ov7740_set_saturation(struct regmap *regmap, int value)
{
 int ret;

 ret = regmap_write(regmap, REG_USAT, (unsigned char)value);
 if (ret)
  return ret;

 return regmap_write(regmap, REG_VSAT, (unsigned char)value);
}
