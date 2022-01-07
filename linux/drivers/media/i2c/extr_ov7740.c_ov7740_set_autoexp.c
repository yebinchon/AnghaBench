
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
typedef enum v4l2_exposure_auto_type { ____Placeholder_v4l2_exposure_auto_type } v4l2_exposure_auto_type ;


 unsigned int REG13_AEC_EN ;
 unsigned int REG13_AGC_EN ;
 int REG_REG13 ;
 int V4L2_EXPOSURE_AUTO ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;
 int regmap_write (struct regmap*,int ,unsigned int) ;

__attribute__((used)) static int ov7740_set_autoexp(struct regmap *regmap,
         enum v4l2_exposure_auto_type value)
{
 unsigned int reg;
 int ret;

 ret = regmap_read(regmap, REG_REG13, &reg);
 if (!ret) {
  if (value == V4L2_EXPOSURE_AUTO)
   reg |= (REG13_AEC_EN | REG13_AGC_EN);
  else
   reg &= ~(REG13_AEC_EN | REG13_AGC_EN);
  ret = regmap_write(regmap, REG_REG13, reg);
 }

 return ret;
}
