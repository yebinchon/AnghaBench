#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  function; } ;
struct v4l2_subdev {struct v4l2_ctrl_handler* ctrl_handler; TYPE_2__ entity; } ;
struct v4l2_ctrl_handler {int error; } ;
struct msp_state {int input; int rev1; int rev2; int ident; int has_nicam; int has_radio; int has_headphones; int has_scart2; int has_scart3; int has_scart4; int has_scart2_out; int has_scart2_out_volume; int has_i2s_conf; int has_subwoofer; int has_sound_processing; int has_virtual_dolby_surround; int has_dolby_pro_logic; int force_btsc; int opmode; int /*<<< orphan*/  kthread; void* volume; void* muted; struct v4l2_ctrl_handler hdl; int /*<<< orphan*/  route_out; int /*<<< orphan*/  route_in; int /*<<< orphan*/  wq; scalar_t__ i2s_mode; int /*<<< orphan*/  audmode; int /*<<< orphan*/  detected_std; int /*<<< orphan*/  v4l2_std; TYPE_3__* pads; struct v4l2_subdev sd; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; TYPE_1__* adapter; int /*<<< orphan*/  name; } ;
struct TYPE_6__ {void* sig_type; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEDIA_ENT_F_IF_AUD_DECODER ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SINK ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SOURCE ; 
 size_t MSP3400_PAD_IF_INPUT ; 
 size_t MSP3400_PAD_OUT ; 
 int /*<<< orphan*/  MSP_INPUT_DEFAULT ; 
 int /*<<< orphan*/  MSP_OUTPUT_DEFAULT ; 
#define  OPMODE_AUTODETECT 130 
#define  OPMODE_AUTOSELECT 129 
#define  OPMODE_MANUAL 128 
 void* PAD_SIGNAL_AUDIO ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_BALANCE ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_BASS ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_LOUDNESS ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_MUTE ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_TREBLE ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_VOLUME ; 
 int /*<<< orphan*/  V4L2_STD_ALL ; 
 int /*<<< orphan*/  V4L2_STD_NTSC ; 
 int /*<<< orphan*/  V4L2_TUNER_MODE_STEREO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int,int,int,int,int /*<<< orphan*/ ,char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct msp_state* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int (*) (void*),struct i2c_client*,char*) ; 
 int FUNC7 (TYPE_2__*,int,TYPE_3__*) ; 
 int FUNC8 (void*) ; 
 int FUNC9 (void*) ; 
 int FUNC10 (void*) ; 
 int /*<<< orphan*/  msp_ctrl_ops ; 
 int /*<<< orphan*/  msp_debug ; 
 int /*<<< orphan*/  msp_ops ; 
 void* FUNC11 (struct i2c_client*,int) ; 
 int FUNC12 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC13 (struct i2c_client*) ; 
 int opmode ; 
 int /*<<< orphan*/ * opmode_str ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (int,void**) ; 
 int /*<<< orphan*/  FUNC16 (struct v4l2_ctrl_handler*) ; 
 int /*<<< orphan*/  FUNC17 (struct v4l2_ctrl_handler*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct v4l2_ctrl_handler*) ; 
 void* FUNC19 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC20 (struct v4l2_subdev*,struct i2c_client*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC21(struct i2c_client *client, const struct i2c_device_id *id)
{
	struct msp_state *state;
	struct v4l2_subdev *sd;
	struct v4l2_ctrl_handler *hdl;
	int (*thread_func)(void *data) = NULL;
	int msp_hard;
	int msp_family;
	int msp_revision;
	int msp_product, msp_prod_hi, msp_prod_lo;
	int msp_rom;
#if defined(CONFIG_MEDIA_CONTROLLER)
	int ret;
#endif

	if (!id)
		FUNC14(client->name, "msp3400", sizeof(client->name));

	if (FUNC12(client) == -1) {
		FUNC1(&client->dev, 1, msp_debug, "msp3400 not found\n");
		return -ENODEV;
	}

	state = FUNC4(&client->dev, sizeof(*state), GFP_KERNEL);
	if (!state)
		return -ENOMEM;

	sd = &state->sd;
	FUNC20(sd, client, &msp_ops);

#if defined(CONFIG_MEDIA_CONTROLLER)
	state->pads[MSP3400_PAD_IF_INPUT].flags = MEDIA_PAD_FL_SINK;
	state->pads[MSP3400_PAD_IF_INPUT].sig_type = PAD_SIGNAL_AUDIO;
	state->pads[MSP3400_PAD_OUT].flags = MEDIA_PAD_FL_SOURCE;
	state->pads[MSP3400_PAD_OUT].sig_type = PAD_SIGNAL_AUDIO;

	sd->entity.function = MEDIA_ENT_F_IF_AUD_DECODER;

	ret = media_entity_pads_init(&sd->entity, 2, state->pads);
	if (ret < 0)
		return ret;
#endif

	state->v4l2_std = V4L2_STD_NTSC;
	state->detected_std = V4L2_STD_ALL;
	state->audmode = V4L2_TUNER_MODE_STEREO;
	state->input = -1;
	state->i2s_mode = 0;
	FUNC5(&state->wq);
	/* These are the reset input/output positions */
	state->route_in = MSP_INPUT_DEFAULT;
	state->route_out = MSP_OUTPUT_DEFAULT;

	state->rev1 = FUNC11(client, 0x1e);
	if (state->rev1 != -1)
		state->rev2 = FUNC11(client, 0x1f);
	FUNC1(&client->dev, 1, msp_debug, "rev1=0x%04x, rev2=0x%04x\n",
			state->rev1, state->rev2);
	if (state->rev1 == -1 || (state->rev1 == 0 && state->rev2 == 0)) {
		FUNC1(&client->dev, 1, msp_debug,
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
	/* Rev B=2, C=3, D=4, G=7 */
	state->ident = msp_family * 10000 + 4000 + msp_product * 10 +
			msp_revision - '@';

	/* Has NICAM support: all mspx41x and mspx45x products have NICAM */
	state->has_nicam =
		msp_prod_hi == 1 || msp_prod_hi == 5;
	/* Has radio support: was added with revision G */
	state->has_radio =
		msp_revision >= 'G';
	/* Has headphones output: not for stripped down products */
	state->has_headphones =
		msp_prod_lo < 5;
	/* Has scart2 input: not in stripped down products of the '3' family */
	state->has_scart2 =
		msp_family >= 4 || msp_prod_lo < 7;
	/* Has scart3 input: not in stripped down products of the '3' family */
	state->has_scart3 =
		msp_family >= 4 || msp_prod_lo < 5;
	/* Has scart4 input: not in pre D revisions, not in stripped D revs */
	state->has_scart4 =
		msp_family >= 4 || (msp_revision >= 'D' && msp_prod_lo < 5);
	/* Has scart2 output: not in stripped down products of
	 * the '3' family */
	state->has_scart2_out =
		msp_family >= 4 || msp_prod_lo < 5;
	/* Has scart2 a volume control? Not in pre-D revisions. */
	state->has_scart2_out_volume =
		msp_revision > 'C' && state->has_scart2_out;
	/* Has a configurable i2s out? */
	state->has_i2s_conf =
		msp_revision >= 'G' && msp_prod_lo < 7;
	/* Has subwoofer output: not in pre-D revs and not in stripped down
	 * products */
	state->has_subwoofer =
		msp_revision >= 'D' && msp_prod_lo < 5;
	/* Has soundprocessing (bass/treble/balance/loudness/equalizer):
	 *  not in stripped down products */
	state->has_sound_processing =
		msp_prod_lo < 7;
	/* Has Virtual Dolby Surround: only in msp34x1 */
	state->has_virtual_dolby_surround =
		msp_revision == 'G' && msp_prod_lo == 1;
	/* Has Virtual Dolby Surround & Dolby Pro Logic: only in msp34x2 */
	state->has_dolby_pro_logic =
		msp_revision == 'G' && msp_prod_lo == 2;
	/* The msp343xG supports BTSC only and cannot do Automatic Standard
	 * Detection. */
	state->force_btsc =
		msp_family == 3 && msp_revision == 'G' && msp_prod_hi == 3;

	state->opmode = opmode;
	if (state->opmode < OPMODE_MANUAL
	    || state->opmode > OPMODE_AUTOSELECT) {
		/* MSP revision G and up have both autodetect and autoselect */
		if (msp_revision >= 'G')
			state->opmode = OPMODE_AUTOSELECT;
		/* MSP revision D and up have autodetect */
		else if (msp_revision >= 'D')
			state->opmode = OPMODE_AUTODETECT;
		else
			state->opmode = OPMODE_MANUAL;
	}

	hdl = &state->hdl;
	FUNC17(hdl, 6);
	if (state->has_sound_processing) {
		FUNC19(hdl, &msp_ctrl_ops,
			V4L2_CID_AUDIO_BASS, 0, 65535, 65535 / 100, 32768);
		FUNC19(hdl, &msp_ctrl_ops,
			V4L2_CID_AUDIO_TREBLE, 0, 65535, 65535 / 100, 32768);
		FUNC19(hdl, &msp_ctrl_ops,
			V4L2_CID_AUDIO_LOUDNESS, 0, 1, 1, 0);
	}
	state->volume = FUNC19(hdl, &msp_ctrl_ops,
			V4L2_CID_AUDIO_VOLUME, 0, 65535, 65535 / 100, 58880);
	FUNC19(hdl, &msp_ctrl_ops,
			V4L2_CID_AUDIO_BALANCE, 0, 65535, 65535 / 100, 32768);
	state->muted = FUNC19(hdl, &msp_ctrl_ops,
			V4L2_CID_AUDIO_MUTE, 0, 1, 1, 0);
	sd->ctrl_handler = hdl;
	if (hdl->error) {
		int err = hdl->error;

		FUNC16(hdl);
		return err;
	}

	FUNC15(2, &state->volume);
	FUNC18(hdl);

	FUNC2(&client->dev,
		 "MSP%d4%02d%c-%c%d found on %s: supports %s%s%s, mode is %s\n",
		 msp_family, msp_product,
		 msp_revision, msp_hard, msp_rom,
		 client->adapter->name,
		 (state->has_nicam) ? "nicam" : "",
		 (state->has_nicam && state->has_radio) ? " and " : "",
		 (state->has_radio) ? "radio" : "",
		 opmode_str[state->opmode]);

	/* version-specific initialization */
	switch (state->opmode) {
	case OPMODE_MANUAL:
		thread_func = msp3400c_thread;
		break;
	case OPMODE_AUTODETECT:
		thread_func = msp3410d_thread;
		break;
	case OPMODE_AUTOSELECT:
		thread_func = msp34xxg_thread;
		break;
	}

	/* startup control thread if needed */
	if (thread_func) {
		state->kthread = FUNC6(thread_func, client, "msp34xx");

		if (FUNC0(state->kthread))
			FUNC3(&client->dev, "kernel_thread() failed\n");
		FUNC13(client);
	}
	return 0;
}