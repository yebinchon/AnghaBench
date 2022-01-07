
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int id; int val; } ;
struct tda1997x_state {int rgb_quantization_range; } ;


 int EINVAL ;

 int set_rgb_quantization_range (struct tda1997x_state*) ;
 int tda1997x_configure_csc (struct v4l2_subdev*) ;
 struct v4l2_subdev* to_sd (struct v4l2_ctrl*) ;
 struct tda1997x_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int tda1997x_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct v4l2_subdev *sd = to_sd(ctrl);
 struct tda1997x_state *state = to_state(sd);

 switch (ctrl->id) {

 case 128:
  state->rgb_quantization_range = ctrl->val;
  set_rgb_quantization_range(state);
  tda1997x_configure_csc(sd);
  return 0;
 }

 return -EINVAL;
}
