
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_ctrl {int val; } ;
struct regmap {int dummy; } ;
struct ov7740 {TYPE_1__* gain; struct regmap* regmap; } ;
struct TYPE_2__ {unsigned int val; } ;


 int REG_CTRL15 ;
 int REG_GAIN ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;

__attribute__((used)) static int ov7740_get_gain(struct ov7740 *ov7740, struct v4l2_ctrl *ctrl)
{
 struct regmap *regmap = ov7740->regmap;
 unsigned int value0, value1;
 int ret;

 if (!ctrl->val)
  return 0;

 ret = regmap_read(regmap, REG_GAIN, &value0);
 if (ret)
  return ret;
 ret = regmap_read(regmap, REG_CTRL15, &value1);
 if (ret)
  return ret;

 ov7740->gain->val = (value1 << 8) | (value0 & 0xff);

 return 0;
}
