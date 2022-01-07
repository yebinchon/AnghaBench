
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int id; int val; } ;
struct i2c_client {int dummy; } ;
struct cx25840_state {int dummy; } ;


 int EINVAL ;




 int cx25840_write (struct i2c_client*,int,int) ;
 int is_cx23888 (struct cx25840_state*) ;
 struct v4l2_subdev* to_sd (struct v4l2_ctrl*) ;
 struct cx25840_state* to_state (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int cx25840_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct v4l2_subdev *sd = to_sd(ctrl);
 struct cx25840_state *state = to_state(sd);
 struct i2c_client *client = v4l2_get_subdevdata(sd);

 switch (ctrl->id) {
 case 131:
  cx25840_write(client, 0x414, ctrl->val - 128);
  break;

 case 130:
  cx25840_write(client, 0x415, ctrl->val << 1);
  break;

 case 128:
  if (is_cx23888(state)) {
   cx25840_write(client, 0x418, ctrl->val << 1);
   cx25840_write(client, 0x419, ctrl->val << 1);
  } else {
   cx25840_write(client, 0x420, ctrl->val << 1);
   cx25840_write(client, 0x421, ctrl->val << 1);
  }
  break;

 case 129:
  if (is_cx23888(state))
   cx25840_write(client, 0x41a, ctrl->val);
  else
   cx25840_write(client, 0x422, ctrl->val);
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
