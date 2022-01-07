
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int REG13_AEC_EN ;
 int REG13_AGC_EN ;
 int REG_AEC ;
 int REG_HAEC ;
 int REG_REG13 ;
 int regmap_update_bits (struct regmap*,int ,int,int ) ;
 int regmap_write (struct regmap*,int ,unsigned char) ;

__attribute__((used)) static int ov7740_set_exp(struct regmap *regmap, int value)
{
 int ret;


 ret = regmap_update_bits(regmap, REG_REG13,
     REG13_AEC_EN | REG13_AGC_EN, 0);
 if (ret)
  return ret;

 ret = regmap_write(regmap, REG_AEC, (unsigned char)value);
 if (ret)
  return ret;

 return regmap_write(regmap, REG_HAEC, (unsigned char)(value >> 8));
}
