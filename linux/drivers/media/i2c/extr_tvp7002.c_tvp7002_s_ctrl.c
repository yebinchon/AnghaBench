
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int id; int val; } ;


 int EINVAL ;
 int TVP7002_B_FINE_GAIN ;
 int TVP7002_G_FINE_GAIN ;
 int TVP7002_R_FINE_GAIN ;

 struct v4l2_subdev* to_sd (struct v4l2_ctrl*) ;
 int tvp7002_write_err (struct v4l2_subdev*,int ,int ,int*) ;

__attribute__((used)) static int tvp7002_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct v4l2_subdev *sd = to_sd(ctrl);
 int error = 0;

 switch (ctrl->id) {
 case 128:
  tvp7002_write_err(sd, TVP7002_R_FINE_GAIN, ctrl->val, &error);
  tvp7002_write_err(sd, TVP7002_G_FINE_GAIN, ctrl->val, &error);
  tvp7002_write_err(sd, TVP7002_B_FINE_GAIN, ctrl->val, &error);
  return error;
 }
 return -EINVAL;
}
