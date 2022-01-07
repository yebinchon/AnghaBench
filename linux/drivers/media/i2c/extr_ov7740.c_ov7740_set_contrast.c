
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int REG_YGAIN ;
 int regmap_write (struct regmap*,int ,unsigned char) ;

__attribute__((used)) static int ov7740_set_contrast(struct regmap *regmap, int value)
{
 return regmap_write(regmap, REG_YGAIN, (unsigned char)value);
}
