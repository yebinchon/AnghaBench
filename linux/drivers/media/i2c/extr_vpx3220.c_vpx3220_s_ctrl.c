
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int id; int val; } ;


 int EINVAL ;




 struct v4l2_subdev* to_sd (struct v4l2_ctrl*) ;
 int vpx3220_fp_write (struct v4l2_subdev*,int,int ) ;
 int vpx3220_write (struct v4l2_subdev*,int,int ) ;

__attribute__((used)) static int vpx3220_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct v4l2_subdev *sd = to_sd(ctrl);

 switch (ctrl->id) {
 case 131:
  vpx3220_write(sd, 0xe6, ctrl->val);
  return 0;
 case 130:

  vpx3220_write(sd, 0xe7, ctrl->val + 192);
  return 0;
 case 128:
  vpx3220_fp_write(sd, 0xa0, ctrl->val);
  return 0;
 case 129:
  vpx3220_fp_write(sd, 0x1c, ctrl->val);
  return 0;
 }
 return -EINVAL;
}
