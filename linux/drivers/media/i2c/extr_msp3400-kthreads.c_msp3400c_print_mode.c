
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msp_state {int main; int second; scalar_t__ mode; } ;
struct i2c_client {int dev; } ;


 scalar_t__ MSP_MODE_AM_NICAM ;
 scalar_t__ MSP_MODE_FM_NICAM1 ;
 scalar_t__ MSP_MODE_FM_NICAM2 ;
 scalar_t__ MSP_MODE_FM_TERRA ;
 int dev_dbg_lvl (int *,int,int ,char*,int,int) ;
 int i2c_get_clientdata (struct i2c_client*) ;
 int msp_debug ;
 struct msp_state* to_state (int ) ;

__attribute__((used)) static void msp3400c_print_mode(struct i2c_client *client)
{
 struct msp_state *state = to_state(i2c_get_clientdata(client));

 if (state->main == state->second)
  dev_dbg_lvl(&client->dev, 1, msp_debug,
   "mono sound carrier: %d.%03d MHz\n",
   state->main / 910000, (state->main / 910) % 1000);
 else
  dev_dbg_lvl(&client->dev, 1, msp_debug,
   "main sound carrier: %d.%03d MHz\n",
   state->main / 910000, (state->main / 910) % 1000);
 if (state->mode == MSP_MODE_FM_NICAM1 || state->mode == MSP_MODE_FM_NICAM2)
  dev_dbg_lvl(&client->dev, 1, msp_debug,
   "NICAM/FM carrier  : %d.%03d MHz\n",
   state->second / 910000, (state->second/910) % 1000);
 if (state->mode == MSP_MODE_AM_NICAM)
  dev_dbg_lvl(&client->dev, 1, msp_debug,
   "NICAM/AM carrier  : %d.%03d MHz\n",
   state->second / 910000, (state->second / 910) % 1000);
 if (state->mode == MSP_MODE_FM_TERRA && state->main != state->second) {
  dev_dbg_lvl(&client->dev, 1, msp_debug,
   "FM-stereo carrier : %d.%03d MHz\n",
   state->second / 910000, (state->second / 910) % 1000);
 }
}
