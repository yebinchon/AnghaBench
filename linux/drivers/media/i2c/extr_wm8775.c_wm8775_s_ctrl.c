
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int id; int val; } ;


 int ALC_EN ;
 int ALC_HOLD ;
 int EINVAL ;
 int R17 ;




 struct v4l2_subdev* to_sd (struct v4l2_ctrl*) ;
 int wm8775_set_audio (struct v4l2_subdev*,int ) ;
 int wm8775_write (struct v4l2_subdev*,int ,int) ;

__attribute__((used)) static int wm8775_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct v4l2_subdev *sd = to_sd(ctrl);

 switch (ctrl->id) {
 case 129:
 case 128:
 case 131:
  wm8775_set_audio(sd, 0);
  return 0;
 case 130:
  wm8775_write(sd, R17, (ctrl->val ? ALC_EN : 0) | ALC_HOLD);
  return 0;
 }
 return -EINVAL;
}
