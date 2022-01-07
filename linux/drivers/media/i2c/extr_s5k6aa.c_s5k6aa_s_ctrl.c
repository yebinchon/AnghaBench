
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int val; int id; } ;
struct s5k6aa {scalar_t__ power; int lock; TYPE_1__* preset; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int index; } ;


 int REG_G_PREV_CFG_CHG ;
 int REG_P_COLORTEMP (int) ;
 int REG_USER_BRIGHTNESS ;
 int REG_USER_CONTRAST ;
 int REG_USER_SATURATION ;
 int REG_USER_SHARPBLUR ;
 struct v4l2_subdev* ctrl_to_sd (struct v4l2_ctrl*) ;
 int debug ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int s5k6aa_set_anti_flicker (struct s5k6aa*,int) ;
 int s5k6aa_set_auto_exposure (struct s5k6aa*,int) ;
 int s5k6aa_set_awb (struct s5k6aa*,int) ;
 int s5k6aa_set_colorfx (struct s5k6aa*,int) ;
 int s5k6aa_set_mirror (struct s5k6aa*,int) ;
 int s5k6aa_write (struct i2c_client*,int ,int) ;
 struct s5k6aa* to_s5k6aa (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int ,int) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int s5k6aa_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct v4l2_subdev *sd = ctrl_to_sd(ctrl);
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct s5k6aa *s5k6aa = to_s5k6aa(sd);
 int idx, err = 0;

 v4l2_dbg(1, debug, sd, "ctrl: 0x%x, value: %d\n", ctrl->id, ctrl->val);

 mutex_lock(&s5k6aa->lock);





 if (s5k6aa->power == 0)
  goto unlock;
 idx = s5k6aa->preset->index;

 switch (ctrl->id) {
 case 137:
  err = s5k6aa_set_awb(s5k6aa, ctrl->val);
  break;

 case 136:
  err = s5k6aa_write(client, REG_USER_BRIGHTNESS, ctrl->val);
  break;

 case 135:
  err = s5k6aa_set_colorfx(s5k6aa, ctrl->val);
  break;

 case 134:
  err = s5k6aa_write(client, REG_USER_CONTRAST, ctrl->val);
  break;

 case 133:
  err = s5k6aa_set_auto_exposure(s5k6aa, ctrl->val);
  break;

 case 132:
  err = s5k6aa_set_mirror(s5k6aa, ctrl->val);
  if (err)
   break;
  err = s5k6aa_write(client, REG_G_PREV_CFG_CHG, 1);
  break;

 case 131:
  err = s5k6aa_set_anti_flicker(s5k6aa, ctrl->val);
  break;

 case 130:
  err = s5k6aa_write(client, REG_USER_SATURATION, ctrl->val);
  break;

 case 129:
  err = s5k6aa_write(client, REG_USER_SHARPBLUR, ctrl->val);
  break;

 case 128:
  err = s5k6aa_write(client, REG_P_COLORTEMP(idx), ctrl->val);
  if (err)
   break;
  err = s5k6aa_write(client, REG_G_PREV_CFG_CHG, 1);
  break;
 }
unlock:
 mutex_unlock(&s5k6aa->lock);
 return err;
}
