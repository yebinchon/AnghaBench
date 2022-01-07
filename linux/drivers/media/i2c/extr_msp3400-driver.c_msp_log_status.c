
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {char* name; } ;
struct msp_state {scalar_t__ opmode; int mode; int rxsubchans; char const* audmode; char const* acb; int route_out; int route_in; int std; int hdl; int rev2; int rev1; } ;
struct i2c_client {int dev; int name; } ;
typedef int prefix ;
 scalar_t__ OPMODE_AUTODETECT ;
 scalar_t__ OPMODE_AUTOSELECT ;
 scalar_t__ OPMODE_MANUAL ;
 int V4L2_SUBDEV_NAME_SIZE ;
 int V4L2_TUNER_SUB_LANG2 ;
 int V4L2_TUNER_SUB_STEREO ;
 int dev_info (int *,char*,char const*,...) ;
 int msp_detect_stereo (struct i2c_client*) ;
 int msp_standard_std_name (int ) ;
 int snprintf (char*,int,char*,char*) ;
 struct msp_state* to_state (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_log_status (int *,char*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int msp_log_status(struct v4l2_subdev *sd)
{
 struct msp_state *state = to_state(sd);
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 const char *p;
 char prefix[V4L2_SUBDEV_NAME_SIZE + 20];

 if (state->opmode == OPMODE_AUTOSELECT)
  msp_detect_stereo(client);
 dev_info(&client->dev, "%s rev1 = 0x%04x rev2 = 0x%04x\n",
   client->name, state->rev1, state->rev2);
 snprintf(prefix, sizeof(prefix), "%s: Audio:    ", sd->name);
 v4l2_ctrl_handler_log_status(&state->hdl, prefix);
 switch (state->mode) {
  case 136: p = "AM (for carrier detect)"; break;
  case 130: p = "FM Radio"; break;
  case 128: p = "Terrestrial FM-mono/stereo"; break;
  case 129: p = "Satellite FM-mono"; break;
  case 132: p = "NICAM/FM (B/G, D/K)"; break;
  case 131: p = "NICAM/FM (I)"; break;
  case 135: p = "NICAM/AM (L)"; break;
  case 134: p = "BTSC"; break;
  case 133: p = "External input"; break;
  default: p = "unknown"; break;
 }
 if (state->mode == 133) {
  dev_info(&client->dev, "Mode:     %s\n", p);
 } else if (state->opmode == OPMODE_MANUAL) {
  dev_info(&client->dev, "Mode:     %s (%s%s)\n", p,
    (state->rxsubchans & V4L2_TUNER_SUB_STEREO) ? "stereo" : "mono",
    (state->rxsubchans & V4L2_TUNER_SUB_LANG2) ? ", dual" : "");
 } else {
  if (state->opmode == OPMODE_AUTODETECT)
   dev_info(&client->dev, "Mode:     %s\n", p);
  dev_info(&client->dev, "Standard: %s (%s%s)\n",
    msp_standard_std_name(state->std),
    (state->rxsubchans & V4L2_TUNER_SUB_STEREO) ? "stereo" : "mono",
    (state->rxsubchans & V4L2_TUNER_SUB_LANG2) ? ", dual" : "");
 }
 dev_info(&client->dev, "Audmode:  0x%04x\n", state->audmode);
 dev_info(&client->dev, "Routing:  0x%08x (input) 0x%08x (output)\n",
   state->route_in, state->route_out);
 dev_info(&client->dev, "ACB:      0x%04x\n", state->acb);
 return 0;
}
