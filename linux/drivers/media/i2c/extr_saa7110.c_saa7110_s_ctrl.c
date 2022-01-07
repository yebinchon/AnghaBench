
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int id; int val; } ;


 int EINVAL ;




 int saa7110_write (struct v4l2_subdev*,int,int ) ;
 struct v4l2_subdev* to_sd (struct v4l2_ctrl*) ;

__attribute__((used)) static int saa7110_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct v4l2_subdev *sd = to_sd(ctrl);

 switch (ctrl->id) {
 case 131:
  saa7110_write(sd, 0x19, ctrl->val);
  break;
 case 130:
  saa7110_write(sd, 0x13, ctrl->val);
  break;
 case 128:
  saa7110_write(sd, 0x12, ctrl->val);
  break;
 case 129:
  saa7110_write(sd, 0x07, ctrl->val);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
