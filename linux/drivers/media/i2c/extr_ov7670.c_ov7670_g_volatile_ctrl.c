
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int id; } ;
struct ov7670_info {TYPE_1__* gain; } ;
struct TYPE_2__ {int val; } ;


 int EINVAL ;

 int ov7670_g_gain (struct v4l2_subdev*,int *) ;
 struct v4l2_subdev* to_sd (struct v4l2_ctrl*) ;
 struct ov7670_info* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int ov7670_g_volatile_ctrl(struct v4l2_ctrl *ctrl)
{
 struct v4l2_subdev *sd = to_sd(ctrl);
 struct ov7670_info *info = to_state(sd);

 switch (ctrl->id) {
 case 128:
  return ov7670_g_gain(sd, &info->gain->val);
 }
 return -EINVAL;
}
