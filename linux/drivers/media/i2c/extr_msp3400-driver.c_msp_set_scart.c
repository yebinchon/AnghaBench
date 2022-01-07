
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msp_state {int in_scart; int acb; int i2s_mode; scalar_t__ has_i2s_conf; } ;
struct i2c_client {int dev; } ;


 int dev_dbg_lvl (int *,int,int ,char*,int ,int,int) ;
 int i2c_get_clientdata (struct i2c_client*) ;
 int msp_debug ;
 int msp_write_dem (struct i2c_client*,int,int ) ;
 int msp_write_dsp (struct i2c_client*,int,int) ;
 int * scart_names ;
 int** scarts ;
 struct msp_state* to_state (int ) ;

void msp_set_scart(struct i2c_client *client, int in, int out)
{
 struct msp_state *state = to_state(i2c_get_clientdata(client));

 state->in_scart = in;

 if (in >= 0 && in <= 7 && out >= 0 && out <= 2) {
  if (-1 == scarts[out][in + 1])
   return;

  state->acb &= ~scarts[out][0];
  state->acb |= scarts[out][in + 1];
 } else
  state->acb = 0xf60;

 dev_dbg_lvl(&client->dev, 1, msp_debug, "scart switch: %s => %d (ACB=0x%04x)\n",
     scart_names[in], out, state->acb);
 msp_write_dsp(client, 0x13, state->acb);


 if (state->has_i2s_conf)
  msp_write_dem(client, 0x40, state->i2s_mode);
}
