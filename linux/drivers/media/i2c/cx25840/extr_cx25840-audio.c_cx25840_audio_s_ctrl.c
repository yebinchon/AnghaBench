
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int id; int val; } ;
struct i2c_client {int dummy; } ;
struct cx25840_state {TYPE_1__* volume; TYPE_2__* mute; } ;
struct TYPE_4__ {int val; } ;
struct TYPE_3__ {int val; } ;


 int EINVAL ;




 int cx25840_and_or (struct i2c_client*,int,int,int) ;
 int set_balance (struct i2c_client*,int) ;
 int set_volume (struct i2c_client*,int ) ;
 struct v4l2_subdev* to_sd (struct v4l2_ctrl*) ;
 struct cx25840_state* to_state (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int cx25840_audio_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct v4l2_subdev *sd = to_sd(ctrl);
 struct cx25840_state *state = to_state(sd);
 struct i2c_client *client = v4l2_get_subdevdata(sd);

 switch (ctrl->id) {
 case 128:
  if (state->mute->val)
   set_volume(client, 0);
  else
   set_volume(client, state->volume->val);
  break;
 case 130:

  cx25840_and_or(client, 0x8d9, ~0x3f,
     48 - (ctrl->val * 48 / 0xffff));
  break;
 case 129:

  cx25840_and_or(client, 0x8db, ~0x3f,
     48 - (ctrl->val * 48 / 0xffff));
  break;
 case 131:
  set_balance(client, ctrl->val);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
