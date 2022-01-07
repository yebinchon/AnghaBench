
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_ctrl {scalar_t__ val; } ;
struct regmap {int dummy; } ;
struct ov7740 {TYPE_1__* exposure; struct regmap* regmap; } ;
struct TYPE_2__ {unsigned int val; } ;


 int REG_AEC ;
 int REG_HAEC ;
 scalar_t__ V4L2_EXPOSURE_MANUAL ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;

__attribute__((used)) static int ov7740_get_exp(struct ov7740 *ov7740, struct v4l2_ctrl *ctrl)
{
 struct regmap *regmap = ov7740->regmap;
 unsigned int value0, value1;
 int ret;

 if (ctrl->val == V4L2_EXPOSURE_MANUAL)
  return 0;

 ret = regmap_read(regmap, REG_AEC, &value0);
 if (ret)
  return ret;
 ret = regmap_read(regmap, REG_HAEC, &value1);
 if (ret)
  return ret;

 ov7740->exposure->val = (value1 << 8) | (value0 & 0xff);

 return 0;
}
