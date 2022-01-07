
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct msp_state {int radio; int opmode; scalar_t__ watch_stereo; } ;
struct i2c_client {int dev; } ;


 int MSP_CARRIER (double) ;
 int MSP_MODE_FM_RADIO ;



 int dev_dbg_lvl (int *,int,int ,char*) ;
 int msp3400c_set_carrier (struct i2c_client*,int ,int ) ;
 int msp3400c_set_mode (struct i2c_client*,int ) ;
 int msp_debug ;
 int msp_update_volume (struct msp_state*) ;
 int msp_wake_thread (struct i2c_client*) ;
 struct msp_state* to_state (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int msp_s_radio(struct v4l2_subdev *sd)
{
 struct msp_state *state = to_state(sd);
 struct i2c_client *client = v4l2_get_subdevdata(sd);

 if (state->radio)
  return 0;
 state->radio = 1;
 dev_dbg_lvl(&client->dev, 1, msp_debug, "switching to radio mode\n");
 state->watch_stereo = 0;
 switch (state->opmode) {
 case 128:

  msp3400c_set_mode(client, MSP_MODE_FM_RADIO);
  msp3400c_set_carrier(client, MSP_CARRIER(10.7),
    MSP_CARRIER(10.7));
  msp_update_volume(state);
  break;
 case 130:
 case 129:

  msp_wake_thread(client);
  break;
 }
 return 0;
}
