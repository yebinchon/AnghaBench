
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int id; int val; } ;
struct tvp5150 {int enable; int regmap; } ;


 int EINVAL ;
 int TVP5150_BRIGHT_CTL ;
 int TVP5150_CONTRAST_CTL ;
 int TVP5150_HUE_CTL ;
 int TVP5150_SATURATION_CTL ;





 int regmap_write (int ,int ,int ) ;
 struct v4l2_subdev* to_sd (struct v4l2_ctrl*) ;
 struct tvp5150* to_tvp5150 (struct v4l2_subdev*) ;
 int tvp5150_selmux (struct v4l2_subdev*) ;

__attribute__((used)) static int tvp5150_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct v4l2_subdev *sd = to_sd(ctrl);
 struct tvp5150 *decoder = to_tvp5150(sd);

 switch (ctrl->id) {
 case 132:
  regmap_write(decoder->regmap, TVP5150_BRIGHT_CTL, ctrl->val);
  return 0;
 case 131:
  regmap_write(decoder->regmap, TVP5150_CONTRAST_CTL, ctrl->val);
  return 0;
 case 129:
  regmap_write(decoder->regmap, TVP5150_SATURATION_CTL,
        ctrl->val);
  return 0;
 case 130:
  regmap_write(decoder->regmap, TVP5150_HUE_CTL, ctrl->val);
  return 0;
 case 128:
  decoder->enable = ctrl->val ? 0 : 1;
  tvp5150_selmux(sd);
  return 0;
 }
 return -EINVAL;
}
