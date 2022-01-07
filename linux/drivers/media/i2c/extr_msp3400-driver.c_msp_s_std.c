
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;
struct msp_state {scalar_t__ v4l2_std; scalar_t__ radio; } ;
struct i2c_client {int dummy; } ;


 int msp_wake_thread (struct i2c_client*) ;
 struct msp_state* to_state (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int msp_s_std(struct v4l2_subdev *sd, v4l2_std_id id)
{
 struct msp_state *state = to_state(sd);
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 int update = state->radio || state->v4l2_std != id;

 state->v4l2_std = id;
 state->radio = 0;
 if (update)
  msp_wake_thread(client);
 return 0;
}
