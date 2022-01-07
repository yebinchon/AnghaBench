
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int REG13_AGC_EN ;
 int REG15_GAIN_MSB ;
 int REG_CTRL15 ;
 int REG_GAIN ;
 int REG_REG13 ;
 int regmap_update_bits (struct regmap*,int ,int ,int) ;
 int regmap_write (struct regmap*,int ,int) ;

__attribute__((used)) static int ov7740_set_gain(struct regmap *regmap, int value)
{
 int ret;

 ret = regmap_write(regmap, REG_GAIN, value & 0xff);
 if (ret)
  return ret;

 ret = regmap_update_bits(regmap, REG_CTRL15,
     REG15_GAIN_MSB, (value >> 8) & 0x3);
 if (!ret)
  ret = regmap_update_bits(regmap, REG_REG13, REG13_AGC_EN, 0);

 return ret;
}
