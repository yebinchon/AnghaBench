
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int REG13_AEC_EN ;
 int REG13_AGC_EN ;
 int REG_REG13 ;
 int REG_SGNSET ;
 int REG_YBRIGHT ;
 int SGNSET_YBRIGHT_MASK ;
 int regmap_update_bits (struct regmap*,int ,int ,int) ;
 int regmap_write (struct regmap*,int ,unsigned char) ;

__attribute__((used)) static int ov7740_set_brightness(struct regmap *regmap, int value)
{

 regmap_update_bits(regmap, REG_REG13, REG13_AEC_EN, 0);
 regmap_update_bits(regmap, REG_REG13, REG13_AGC_EN, 0);

 if (value >= 0) {
  regmap_write(regmap, REG_YBRIGHT, (unsigned char)value);
  regmap_update_bits(regmap, REG_SGNSET, SGNSET_YBRIGHT_MASK, 0);
 } else{
  regmap_write(regmap, REG_YBRIGHT, (unsigned char)(-value));
  regmap_update_bits(regmap, REG_SGNSET, SGNSET_YBRIGHT_MASK, 1);
 }

 return 0;
}
