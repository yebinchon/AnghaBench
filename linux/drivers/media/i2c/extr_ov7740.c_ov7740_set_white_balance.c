
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct ov7740 {TYPE_2__* red_balance; TYPE_1__* blue_balance; struct regmap* regmap; } ;
struct TYPE_4__ {unsigned int val; } ;
struct TYPE_3__ {unsigned int val; } ;


 unsigned int ISPCTRL00_AWB_EN ;
 unsigned int ISPCTRL00_AWB_GAIN_EN ;
 int REG_BGAIN ;
 int REG_ISP_CTRL00 ;
 int REG_RGAIN ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;
 int regmap_write (struct regmap*,int ,unsigned int) ;

__attribute__((used)) static int ov7740_set_white_balance(struct ov7740 *ov7740, int awb)
{
 struct regmap *regmap = ov7740->regmap;
 unsigned int value;
 int ret;

 ret = regmap_read(regmap, REG_ISP_CTRL00, &value);
 if (!ret) {
  if (awb)
   value |= (ISPCTRL00_AWB_EN | ISPCTRL00_AWB_GAIN_EN);
  else
   value &= ~(ISPCTRL00_AWB_EN | ISPCTRL00_AWB_GAIN_EN);
  ret = regmap_write(regmap, REG_ISP_CTRL00, value);
  if (ret)
   return ret;
 }

 if (!awb) {
  ret = regmap_write(regmap, REG_BGAIN,
       ov7740->blue_balance->val);
  if (ret)
   return ret;

  ret = regmap_write(regmap, REG_RGAIN, ov7740->red_balance->val);
  if (ret)
   return ret;
 }

 return 0;
}
