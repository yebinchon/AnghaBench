
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msp_state {int opmode; } ;
struct i2c_client {int dummy; } ;





 int i2c_get_clientdata (struct i2c_client*) ;
 int msp3400c_set_audmode (struct i2c_client*) ;
 int msp34xxg_set_audmode (struct i2c_client*) ;
 struct msp_state* to_state (int ) ;

void msp_set_audmode(struct i2c_client *client)
{
 struct msp_state *state = to_state(i2c_get_clientdata(client));

 switch (state->opmode) {
 case 128:
 case 130:
  msp3400c_set_audmode(client);
  break;
 case 129:
  msp34xxg_set_audmode(client);
  break;
 }
}
