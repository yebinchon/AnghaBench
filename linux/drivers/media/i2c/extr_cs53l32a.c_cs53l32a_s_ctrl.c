
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int id; int val; } ;


 int EINVAL ;


 int cs53l32a_write (struct v4l2_subdev*,int,int) ;
 struct v4l2_subdev* to_sd (struct v4l2_ctrl*) ;

__attribute__((used)) static int cs53l32a_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct v4l2_subdev *sd = to_sd(ctrl);

 switch (ctrl->id) {
 case 129:
  cs53l32a_write(sd, 0x03, ctrl->val ? 0xf0 : 0x30);
  return 0;
 case 128:
  cs53l32a_write(sd, 0x04, (u8)ctrl->val);
  cs53l32a_write(sd, 0x05, (u8)ctrl->val);
  return 0;
 }
 return -EINVAL;
}
