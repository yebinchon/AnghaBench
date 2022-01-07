
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct lp3943 {int regmap; } ;


 int regmap_read (int ,scalar_t__,unsigned int*) ;

int lp3943_read_byte(struct lp3943 *lp3943, u8 reg, u8 *read)
{
 int ret;
 unsigned int val;

 ret = regmap_read(lp3943->regmap, reg, &val);
 if (ret < 0)
  return ret;

 *read = (u8)val;
 return 0;
}
