
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int val; int flags; int id; int name; } ;
struct s5c73m3 {scalar_t__ power; int lock; } ;


 int COMM_WDR ;
 int COMM_ZOOM_STEP ;
 int EINVAL ;
 int V4L2_CTRL_FLAG_INACTIVE ;
 struct v4l2_subdev* ctrl_to_sensor_sd (struct v4l2_ctrl*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int s5c73m3_3a_lock (struct s5c73m3*,struct v4l2_ctrl*) ;
 int s5c73m3_dbg ;
 int s5c73m3_isp_command (struct s5c73m3*,int ,int) ;
 int s5c73m3_set_auto_focus (struct s5c73m3*,int) ;
 int s5c73m3_set_colorfx (struct s5c73m3*,int) ;
 int s5c73m3_set_contrast (struct s5c73m3*,int) ;
 int s5c73m3_set_exposure (struct s5c73m3*,int) ;
 int s5c73m3_set_iso (struct s5c73m3*,int) ;
 int s5c73m3_set_jpeg_quality (struct s5c73m3*,int) ;
 int s5c73m3_set_power_line_freq (struct s5c73m3*,int) ;
 int s5c73m3_set_saturation (struct s5c73m3*,int) ;
 int s5c73m3_set_scene_program (struct s5c73m3*,int) ;
 int s5c73m3_set_sharpness (struct s5c73m3*,int) ;
 int s5c73m3_set_stabilization (struct s5c73m3*,int) ;
 int s5c73m3_set_white_balance (struct s5c73m3*,int) ;
 struct s5c73m3* sensor_sd_to_s5c73m3 (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int ,int) ;

__attribute__((used)) static int s5c73m3_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct v4l2_subdev *sd = ctrl_to_sensor_sd(ctrl);
 struct s5c73m3 *state = sensor_sd_to_s5c73m3(sd);
 int ret = 0;

 v4l2_dbg(1, s5c73m3_dbg, sd, "set_ctrl: %s, value: %d\n",
   ctrl->name, ctrl->val);

 mutex_lock(&state->lock);





 if (state->power == 0)
  goto unlock;

 if (ctrl->flags & V4L2_CTRL_FLAG_INACTIVE) {
  ret = -EINVAL;
  goto unlock;
 }

 switch (ctrl->id) {
 case 142:
  ret = s5c73m3_3a_lock(state, ctrl);
  break;

 case 141:
  ret = s5c73m3_set_white_balance(state, ctrl->val);
  break;

 case 139:
  ret = s5c73m3_set_contrast(state, ctrl->val);
  break;

 case 140:
  ret = s5c73m3_set_colorfx(state, ctrl->val);
  break;

 case 138:
  ret = s5c73m3_set_exposure(state, ctrl->val);
  break;

 case 137:
  ret = s5c73m3_set_auto_focus(state, ctrl->val);
  break;

 case 136:
  ret = s5c73m3_set_stabilization(state, ctrl->val);
  break;

 case 135:
  ret = s5c73m3_set_iso(state, ctrl->val);
  break;

 case 134:
  ret = s5c73m3_set_jpeg_quality(state, ctrl->val);
  break;

 case 133:
  ret = s5c73m3_set_power_line_freq(state, ctrl->val);
  break;

 case 132:
  ret = s5c73m3_set_saturation(state, ctrl->val);
  break;

 case 131:
  ret = s5c73m3_set_scene_program(state, ctrl->val);
  break;

 case 130:
  ret = s5c73m3_set_sharpness(state, ctrl->val);
  break;

 case 129:
  ret = s5c73m3_isp_command(state, COMM_WDR, !!ctrl->val);
  break;

 case 128:
  ret = s5c73m3_isp_command(state, COMM_ZOOM_STEP, ctrl->val);
  break;
 }
unlock:
 mutex_unlock(&state->lock);
 return ret;
}
