
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msp_state {int opmode; } ;
struct i2c_client {int dummy; } ;





 int i2c_get_clientdata (struct i2c_client*) ;
 int msp3400c_detect_stereo (struct i2c_client*) ;
 int msp34xxg_detect_stereo (struct i2c_client*) ;
 struct msp_state* to_state (int ) ;

int msp_detect_stereo(struct i2c_client *client)
{
 struct msp_state *state = to_state(i2c_get_clientdata(client));

 switch (state->opmode) {
 case 128:
 case 130:
  return msp3400c_detect_stereo(client);
 case 129:
  return msp34xxg_detect_stereo(client);
 }
 return 0;
}
