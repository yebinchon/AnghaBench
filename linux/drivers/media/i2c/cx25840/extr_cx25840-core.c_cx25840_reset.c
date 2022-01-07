
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct cx25840_state {int is_initialized; } ;


 int cx231xx_initialize (struct i2c_client*) ;
 int cx23885_initialize (struct i2c_client*) ;
 int cx25836_initialize (struct i2c_client*) ;
 int cx25840_initialize (struct i2c_client*) ;
 scalar_t__ is_cx231xx (struct cx25840_state*) ;
 scalar_t__ is_cx2388x (struct cx25840_state*) ;
 scalar_t__ is_cx2583x (struct cx25840_state*) ;
 struct cx25840_state* to_state (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int cx25840_reset(struct v4l2_subdev *sd, u32 val)
{
 struct cx25840_state *state = to_state(sd);
 struct i2c_client *client = v4l2_get_subdevdata(sd);

 if (is_cx2583x(state))
  cx25836_initialize(client);
 else if (is_cx2388x(state))
  cx23885_initialize(client);
 else if (is_cx231xx(state))
  cx231xx_initialize(client);
 else
  cx25840_initialize(client);

 state->is_initialized = 1;

 return 0;
}
