
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int val; int id; } ;
struct adv7180_state {int mutex; } ;


 int ADV7180_FLCONTROL_FL_ENABLE ;
 int ADV7180_REG_BRI ;
 int ADV7180_REG_CON ;
 int ADV7180_REG_FLCONTROL ;
 int ADV7180_REG_HUE ;
 int ADV7180_REG_SD_SAT_CB ;
 int ADV7180_REG_SD_SAT_CR ;
 int EINVAL ;





 int adv7180_write (struct adv7180_state*,int,int) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 struct v4l2_subdev* to_adv7180_sd (struct v4l2_ctrl*) ;
 struct adv7180_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int adv7180_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct v4l2_subdev *sd = to_adv7180_sd(ctrl);
 struct adv7180_state *state = to_state(sd);
 int ret = mutex_lock_interruptible(&state->mutex);
 int val;

 if (ret)
  return ret;
 val = ctrl->val;
 switch (ctrl->id) {
 case 131:
  ret = adv7180_write(state, ADV7180_REG_BRI, val);
  break;
 case 129:

  ret = adv7180_write(state, ADV7180_REG_HUE, -val);
  break;
 case 130:
  ret = adv7180_write(state, ADV7180_REG_CON, val);
  break;
 case 128:




  ret = adv7180_write(state, ADV7180_REG_SD_SAT_CB, val);
  if (ret < 0)
   break;
  ret = adv7180_write(state, ADV7180_REG_SD_SAT_CR, val);
  break;
 case 132:
  if (ctrl->val) {

   adv7180_write(state, 0x80d9, 0x44);
   adv7180_write(state, ADV7180_REG_FLCONTROL,
    ADV7180_FLCONTROL_FL_ENABLE);
  } else {

   adv7180_write(state, 0x80d9, 0xc4);
   adv7180_write(state, ADV7180_REG_FLCONTROL, 0x00);
  }
  break;
 default:
  ret = -EINVAL;
 }

 mutex_unlock(&state->mutex);
 return ret;
}
