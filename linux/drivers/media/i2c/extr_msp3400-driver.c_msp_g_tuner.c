
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ type; int capability; int audmode; int rxsubchans; } ;
struct v4l2_subdev {int dummy; } ;
struct msp_state {scalar_t__ opmode; int audmode; int rxsubchans; int radio; } ;
struct i2c_client {int dummy; } ;


 scalar_t__ OPMODE_AUTOSELECT ;
 scalar_t__ V4L2_TUNER_ANALOG_TV ;
 int V4L2_TUNER_CAP_LANG1 ;
 int V4L2_TUNER_CAP_LANG2 ;
 int V4L2_TUNER_CAP_STEREO ;
 int msp_detect_stereo (struct i2c_client*) ;
 struct msp_state* to_state (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int msp_g_tuner(struct v4l2_subdev *sd, struct v4l2_tuner *vt)
{
 struct msp_state *state = to_state(sd);
 struct i2c_client *client = v4l2_get_subdevdata(sd);

 if (vt->type != V4L2_TUNER_ANALOG_TV)
  return 0;
 if (!state->radio) {
  if (state->opmode == OPMODE_AUTOSELECT)
   msp_detect_stereo(client);
  vt->rxsubchans = state->rxsubchans;
 }
 vt->audmode = state->audmode;
 vt->capability |= V4L2_TUNER_CAP_STEREO |
  V4L2_TUNER_CAP_LANG1 | V4L2_TUNER_CAP_LANG2;
 return 0;
}
