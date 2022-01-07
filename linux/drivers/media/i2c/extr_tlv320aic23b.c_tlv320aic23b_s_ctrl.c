
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int id; int val; } ;


 int EINVAL ;

 int tlv320aic23b_write (struct v4l2_subdev*,int ,int) ;
 struct v4l2_subdev* to_sd (struct v4l2_ctrl*) ;

__attribute__((used)) static int tlv320aic23b_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct v4l2_subdev *sd = to_sd(ctrl);

 switch (ctrl->id) {
 case 128:
  tlv320aic23b_write(sd, 0, 0x180);

  if (!ctrl->val)
   tlv320aic23b_write(sd, 0, 0x119);
  return 0;
 }
 return -EINVAL;
}
