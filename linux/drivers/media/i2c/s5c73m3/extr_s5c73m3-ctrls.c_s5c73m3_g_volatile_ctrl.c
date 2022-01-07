
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int id; } ;
struct TYPE_2__ {int af_status; } ;
struct s5c73m3 {scalar_t__ power; TYPE_1__ ctrls; } ;


 int EBUSY ;

 struct v4l2_subdev* ctrl_to_sensor_sd (struct v4l2_ctrl*) ;
 int s5c73m3_get_af_status (struct s5c73m3*,int ) ;
 struct s5c73m3* sensor_sd_to_s5c73m3 (struct v4l2_subdev*) ;

__attribute__((used)) static int s5c73m3_g_volatile_ctrl(struct v4l2_ctrl *ctrl)
{
 struct v4l2_subdev *sd = ctrl_to_sensor_sd(ctrl);
 struct s5c73m3 *state = sensor_sd_to_s5c73m3(sd);
 int ret;

 if (state->power == 0)
  return -EBUSY;

 switch (ctrl->id) {
 case 128:
  ret = s5c73m3_get_af_status(state, state->ctrls.af_status);
  if (ret)
   return ret;
  break;
 }

 return 0;
}
