
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int function; } ;
struct v4l2_subdev {struct v4l2_ctrl_handler* ctrl_handler; TYPE_2__ entity; } ;
struct v4l2_ctrl_handler {int error; } ;
struct msp_state {int input; int rev1; int rev2; int ident; int has_nicam; int has_radio; int has_headphones; int has_scart2; int has_scart3; int has_scart4; int has_scart2_out; int has_scart2_out_volume; int has_i2s_conf; int has_subwoofer; int has_sound_processing; int has_virtual_dolby_surround; int has_dolby_pro_logic; int force_btsc; int opmode; int kthread; void* volume; void* muted; struct v4l2_ctrl_handler hdl; int route_out; int route_in; int wq; scalar_t__ i2s_mode; int audmode; int detected_std; int v4l2_std; TYPE_3__* pads; struct v4l2_subdev sd; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; TYPE_1__* adapter; int name; } ;
struct TYPE_6__ {void* sig_type; int flags; } ;
struct TYPE_4__ {int name; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int MEDIA_ENT_F_IF_AUD_DECODER ;
 int MEDIA_PAD_FL_SINK ;
 int MEDIA_PAD_FL_SOURCE ;
 size_t MSP3400_PAD_IF_INPUT ;
 size_t MSP3400_PAD_OUT ;
 int MSP_INPUT_DEFAULT ;
 int MSP_OUTPUT_DEFAULT ;



 void* PAD_SIGNAL_AUDIO ;
 int V4L2_CID_AUDIO_BALANCE ;
 int V4L2_CID_AUDIO_BASS ;
 int V4L2_CID_AUDIO_LOUDNESS ;
 int V4L2_CID_AUDIO_MUTE ;
 int V4L2_CID_AUDIO_TREBLE ;
 int V4L2_CID_AUDIO_VOLUME ;
 int V4L2_STD_ALL ;
 int V4L2_STD_NTSC ;
 int V4L2_TUNER_MODE_STEREO ;
 int dev_dbg_lvl (int *,int,int ,char*,...) ;
 int dev_info (int *,char*,int,int,int,int,int,int ,char*,char*,char*,int ) ;
 int dev_warn (int *,char*) ;
 struct msp_state* devm_kzalloc (int *,int,int ) ;
 int init_waitqueue_head (int *) ;
 int kthread_run (int (*) (void*),struct i2c_client*,char*) ;
 int media_entity_pads_init (TYPE_2__*,int,TYPE_3__*) ;
 int msp3400c_thread (void*) ;
 int msp3410d_thread (void*) ;
 int msp34xxg_thread (void*) ;
 int msp_ctrl_ops ;
 int msp_debug ;
 int msp_ops ;
 void* msp_read_dsp (struct i2c_client*,int) ;
 int msp_reset (struct i2c_client*) ;
 int msp_wake_thread (struct i2c_client*) ;
 int opmode ;
 int * opmode_str ;
 int strscpy (int ,char*,int) ;
 int v4l2_ctrl_cluster (int,void**) ;
 int v4l2_ctrl_handler_free (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 int v4l2_ctrl_handler_setup (struct v4l2_ctrl_handler*) ;
 void* v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int ,int,int,int) ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;

__attribute__((used)) static int msp_probe(struct i2c_client *client, const struct i2c_device_id *id)
{
 struct msp_state *state;
 struct v4l2_subdev *sd;
 struct v4l2_ctrl_handler *hdl;
 int (*thread_func)(void *data) = ((void*)0);
 int msp_hard;
 int msp_family;
 int msp_revision;
 int msp_product, msp_prod_hi, msp_prod_lo;
 int msp_rom;




 if (!id)
  strscpy(client->name, "msp3400", sizeof(client->name));

 if (msp_reset(client) == -1) {
  dev_dbg_lvl(&client->dev, 1, msp_debug, "msp3400 not found\n");
  return -ENODEV;
 }

 state = devm_kzalloc(&client->dev, sizeof(*state), GFP_KERNEL);
 if (!state)
  return -ENOMEM;

 sd = &state->sd;
 v4l2_i2c_subdev_init(sd, client, &msp_ops);
 state->v4l2_std = V4L2_STD_NTSC;
 state->detected_std = V4L2_STD_ALL;
 state->audmode = V4L2_TUNER_MODE_STEREO;
 state->input = -1;
 state->i2s_mode = 0;
 init_waitqueue_head(&state->wq);

 state->route_in = MSP_INPUT_DEFAULT;
 state->route_out = MSP_OUTPUT_DEFAULT;

 state->rev1 = msp_read_dsp(client, 0x1e);
 if (state->rev1 != -1)
  state->rev2 = msp_read_dsp(client, 0x1f);
 dev_dbg_lvl(&client->dev, 1, msp_debug, "rev1=0x%04x, rev2=0x%04x\n",
   state->rev1, state->rev2);
 if (state->rev1 == -1 || (state->rev1 == 0 && state->rev2 == 0)) {
  dev_dbg_lvl(&client->dev, 1, msp_debug,
    "not an msp3400 (cannot read chip version)\n");
  return -ENODEV;
 }

 msp_family = ((state->rev1 >> 4) & 0x0f) + 3;
 msp_product = (state->rev2 >> 8) & 0xff;
 msp_prod_hi = msp_product / 10;
 msp_prod_lo = msp_product % 10;
 msp_revision = (state->rev1 & 0x0f) + '@';
 msp_hard = ((state->rev1 >> 8) & 0xff) + '@';
 msp_rom = state->rev2 & 0x1f;

 state->ident = msp_family * 10000 + 4000 + msp_product * 10 +
   msp_revision - '@';


 state->has_nicam =
  msp_prod_hi == 1 || msp_prod_hi == 5;

 state->has_radio =
  msp_revision >= 'G';

 state->has_headphones =
  msp_prod_lo < 5;

 state->has_scart2 =
  msp_family >= 4 || msp_prod_lo < 7;

 state->has_scart3 =
  msp_family >= 4 || msp_prod_lo < 5;

 state->has_scart4 =
  msp_family >= 4 || (msp_revision >= 'D' && msp_prod_lo < 5);


 state->has_scart2_out =
  msp_family >= 4 || msp_prod_lo < 5;

 state->has_scart2_out_volume =
  msp_revision > 'C' && state->has_scart2_out;

 state->has_i2s_conf =
  msp_revision >= 'G' && msp_prod_lo < 7;


 state->has_subwoofer =
  msp_revision >= 'D' && msp_prod_lo < 5;


 state->has_sound_processing =
  msp_prod_lo < 7;

 state->has_virtual_dolby_surround =
  msp_revision == 'G' && msp_prod_lo == 1;

 state->has_dolby_pro_logic =
  msp_revision == 'G' && msp_prod_lo == 2;


 state->force_btsc =
  msp_family == 3 && msp_revision == 'G' && msp_prod_hi == 3;

 state->opmode = opmode;
 if (state->opmode < 128
     || state->opmode > 129) {

  if (msp_revision >= 'G')
   state->opmode = 129;

  else if (msp_revision >= 'D')
   state->opmode = 130;
  else
   state->opmode = 128;
 }

 hdl = &state->hdl;
 v4l2_ctrl_handler_init(hdl, 6);
 if (state->has_sound_processing) {
  v4l2_ctrl_new_std(hdl, &msp_ctrl_ops,
   V4L2_CID_AUDIO_BASS, 0, 65535, 65535 / 100, 32768);
  v4l2_ctrl_new_std(hdl, &msp_ctrl_ops,
   V4L2_CID_AUDIO_TREBLE, 0, 65535, 65535 / 100, 32768);
  v4l2_ctrl_new_std(hdl, &msp_ctrl_ops,
   V4L2_CID_AUDIO_LOUDNESS, 0, 1, 1, 0);
 }
 state->volume = v4l2_ctrl_new_std(hdl, &msp_ctrl_ops,
   V4L2_CID_AUDIO_VOLUME, 0, 65535, 65535 / 100, 58880);
 v4l2_ctrl_new_std(hdl, &msp_ctrl_ops,
   V4L2_CID_AUDIO_BALANCE, 0, 65535, 65535 / 100, 32768);
 state->muted = v4l2_ctrl_new_std(hdl, &msp_ctrl_ops,
   V4L2_CID_AUDIO_MUTE, 0, 1, 1, 0);
 sd->ctrl_handler = hdl;
 if (hdl->error) {
  int err = hdl->error;

  v4l2_ctrl_handler_free(hdl);
  return err;
 }

 v4l2_ctrl_cluster(2, &state->volume);
 v4l2_ctrl_handler_setup(hdl);

 dev_info(&client->dev,
   "MSP%d4%02d%c-%c%d found on %s: supports %s%s%s, mode is %s\n",
   msp_family, msp_product,
   msp_revision, msp_hard, msp_rom,
   client->adapter->name,
   (state->has_nicam) ? "nicam" : "",
   (state->has_nicam && state->has_radio) ? " and " : "",
   (state->has_radio) ? "radio" : "",
   opmode_str[state->opmode]);


 switch (state->opmode) {
 case 128:
  thread_func = msp3400c_thread;
  break;
 case 130:
  thread_func = msp3410d_thread;
  break;
 case 129:
  thread_func = msp34xxg_thread;
  break;
 }


 if (thread_func) {
  state->kthread = kthread_run(thread_func, client, "msp34xx");

  if (IS_ERR(state->kthread))
   dev_warn(&client->dev, "kernel_thread() failed\n");
  msp_wake_thread(client);
 }
 return 0;
}
