
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msp_state {int audmode; scalar_t__ opmode; int mode; int rxsubchans; int nicam_on; } ;
struct i2c_client {int dev; } ;


 int MSP_CARRIER (double) ;
 scalar_t__ OPMODE_AUTOSELECT ;
 int SCART_MONO ;





 int V4L2_TUNER_SUB_LANG2 ;
 int V4L2_TUNER_SUB_MONO ;
 int V4L2_TUNER_SUB_STEREO ;
 int dev_dbg_lvl (int *,int,int ,char*,...) ;
 int i2c_get_clientdata (struct i2c_client*) ;
 int msp3400c_set_carrier (struct i2c_client*,int ,int ) ;
 int msp_debug ;
 int msp_set_scart (struct i2c_client*,int ,int ) ;
 int msp_set_source (struct i2c_client*,int) ;
 int msp_write_dsp (struct i2c_client*,int,int) ;
 struct msp_state* to_state (int ) ;

__attribute__((used)) static void msp3400c_set_audmode(struct i2c_client *client)
{
 static char *strmode[] = {
  "mono", "stereo", "lang2", "lang1", "lang1+lang2"
 };
 struct msp_state *state = to_state(i2c_get_clientdata(client));
 char *modestr = (state->audmode >= 0 && state->audmode < 5) ?
  strmode[state->audmode] : "unknown";
 int src = 0;
 int audmode = state->audmode;

 if (state->opmode == OPMODE_AUTOSELECT) {



  dev_dbg_lvl(&client->dev, 1, msp_debug,
   "set_audmode called with mode=%d instead of set_source (ignored)\n",
   state->audmode);
  return;
 }





 if (state->mode != 138) {

  if (state->rxsubchans == V4L2_TUNER_SUB_MONO)
   audmode = 129;

  else if (state->rxsubchans & V4L2_TUNER_SUB_LANG2) {

   if (audmode == 129 ||
       audmode == 128)
    audmode = 132;
  }

  else if (audmode != 129)
   audmode = 128;
 }


 switch (state->mode) {
 case 133:
  dev_dbg_lvl(&client->dev, 1, msp_debug, "FM set_audmode: %s\n", modestr);
  switch (audmode) {
  case 128:
   msp_write_dsp(client, 0x000e, 0x3001);
   break;
  case 129:
  case 132:
  case 130:
  case 131:
   msp_write_dsp(client, 0x000e, 0x3000);
   break;
  }
  break;
 case 134:
  dev_dbg_lvl(&client->dev, 1, msp_debug, "SAT set_audmode: %s\n", modestr);
  switch (audmode) {
  case 129:
   msp3400c_set_carrier(client, MSP_CARRIER(6.5), MSP_CARRIER(6.5));
   break;
  case 128:
  case 131:
   msp3400c_set_carrier(client, MSP_CARRIER(7.2), MSP_CARRIER(7.02));
   break;
  case 132:
   msp3400c_set_carrier(client, MSP_CARRIER(7.38), MSP_CARRIER(7.02));
   break;
  case 130:
   msp3400c_set_carrier(client, MSP_CARRIER(7.38), MSP_CARRIER(7.02));
   break;
  }
  break;
 case 137:
 case 136:
 case 140:
  dev_dbg_lvl(&client->dev, 1, msp_debug,
   "NICAM set_audmode: %s\n", modestr);
  if (state->nicam_on)
   src = 0x0100;
  break;
 case 139:
  dev_dbg_lvl(&client->dev, 1, msp_debug,
   "BTSC set_audmode: %s\n", modestr);
  break;
 case 138:
  dev_dbg_lvl(&client->dev, 1, msp_debug,
   "extern set_audmode: %s\n", modestr);
  src = 0x0200;
  break;
 case 135:
  dev_dbg_lvl(&client->dev, 1, msp_debug,
   "FM-Radio set_audmode: %s\n", modestr);
  break;
 default:
  dev_dbg_lvl(&client->dev, 1, msp_debug, "mono set_audmode\n");
  return;
 }


 dev_dbg_lvl(&client->dev, 1, msp_debug, "set audmode %d\n", audmode);
 switch (audmode) {
 case 128:
 case 131:
  src |= 0x0020;
  break;
 case 129:
  if (state->mode == 140) {
   dev_dbg_lvl(&client->dev, 1, msp_debug, "switching to AM mono\n");


   msp_set_scart(client, SCART_MONO, 0);
   src = 0x0200;
   break;
  }
  if (state->rxsubchans & V4L2_TUNER_SUB_STEREO)
   src = 0x0030;
  break;
 case 132:
  break;
 case 130:
  src |= 0x0010;
  break;
 }
 dev_dbg_lvl(&client->dev, 1, msp_debug,
  "set_audmode final source/matrix = 0x%x\n", src);

 msp_set_source(client, src);
}
