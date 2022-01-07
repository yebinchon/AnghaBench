
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 unsigned int REG13_AGC_EN ;
 int REG_REG13 ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;
 int regmap_write (struct regmap*,int ,unsigned int) ;

__attribute__((used)) static int ov7740_set_autogain(struct regmap *regmap, int value)
{
 unsigned int reg;
 int ret;

 ret = regmap_read(regmap, REG_REG13, &reg);
 if (ret)
  return ret;
 if (value)
  reg |= REG13_AGC_EN;
 else
  reg &= ~REG13_AGC_EN;
 return regmap_write(regmap, REG_REG13, reg);
}
