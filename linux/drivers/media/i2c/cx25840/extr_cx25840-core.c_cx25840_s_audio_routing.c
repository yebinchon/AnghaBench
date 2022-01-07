
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct cx25840_state {int vid_input; } ;


 int cx23888_std_setup (struct i2c_client*) ;
 scalar_t__ is_cx23888 (struct cx25840_state*) ;
 int set_input (struct i2c_client*,int ,int ) ;
 struct cx25840_state* to_state (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int cx25840_s_audio_routing(struct v4l2_subdev *sd,
       u32 input, u32 output, u32 config)
{
 struct cx25840_state *state = to_state(sd);
 struct i2c_client *client = v4l2_get_subdevdata(sd);

 if (is_cx23888(state))
  cx23888_std_setup(client);
 return set_input(client, state->vid_input, input);
}
