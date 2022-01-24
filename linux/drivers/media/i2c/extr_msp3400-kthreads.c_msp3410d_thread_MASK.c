#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct msp_state {scalar_t__ mode; int scan_in_progress; int v4l2_std; int watch_stereo; int nicam_on; int std; int i2s_mode; scalar_t__ has_i2s_conf; scalar_t__ has_nicam; int /*<<< orphan*/  rxsubchans; int /*<<< orphan*/  detected_std; scalar_t__ radio; int /*<<< orphan*/  second; int /*<<< orphan*/  main; scalar_t__ restart; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {char* name; int retval; int /*<<< orphan*/  second; int /*<<< orphan*/  main; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (double) ; 
 scalar_t__ MSP_MODE_AM_NICAM ; 
 scalar_t__ MSP_MODE_BTSC ; 
 scalar_t__ MSP_MODE_EXTERN ; 
 scalar_t__ MSP_MODE_FM_NICAM1 ; 
 scalar_t__ MSP_MODE_FM_NICAM2 ; 
 scalar_t__ MSP_MODE_FM_RADIO ; 
 scalar_t__ MSP_MODE_FM_TERRA ; 
 int /*<<< orphan*/  V4L2_STD_ALL ; 
 int V4L2_STD_NTSC ; 
 int V4L2_STD_SECAM ; 
 int /*<<< orphan*/  V4L2_TUNER_SUB_MONO ; 
 int /*<<< orphan*/  V4L2_TUNER_SUB_STEREO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,scalar_t__) ; 
 scalar_t__ msp_amsound ; 
 scalar_t__ msp_debug ; 
 int FUNC7 (struct i2c_client*,int) ; 
 scalar_t__ FUNC8 (struct msp_state*,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 TYPE_1__* msp_stdlist ; 
 int /*<<< orphan*/  FUNC11 (struct msp_state*) ; 
 int /*<<< orphan*/  FUNC12 (struct i2c_client*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct i2c_client*,int,int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 struct msp_state* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct i2c_client*) ; 

int FUNC17(void *data)
{
	struct i2c_client *client = data;
	struct msp_state *state = FUNC15(FUNC2(client));
	int val, i, std, count;

	FUNC1(&client->dev, 1, msp_debug, "msp3410 daemon started\n");
	state->detected_std = V4L2_STD_ALL;
	FUNC14();
	for (;;) {
		FUNC1(&client->dev, 2, msp_debug, "msp3410 thread: sleep\n");
		FUNC8(state, -1);
		FUNC1(&client->dev, 2, msp_debug, "msp3410 thread: wakeup\n");

restart:
		FUNC1(&client->dev, 2, msp_debug, "thread: restart scan\n");
		state->restart = 0;
		if (FUNC3())
			break;

		if (state->mode == MSP_MODE_EXTERN) {
			/* no carrier scan needed, just unmute */
			FUNC1(&client->dev, 1, msp_debug,
				"thread: no carrier scan\n");
			state->scan_in_progress = 0;
			FUNC11(state);
			continue;
		}

		/* mute audio */
		state->scan_in_progress = 1;
		FUNC11(state);

		/* start autodetect. Note: autodetect is not supported for
		   NTSC-M and radio, hence we force the standard in those
		   cases. */
		if (state->radio)
			std = 0x40;
		else
			std = (state->v4l2_std & V4L2_STD_NTSC) ? 0x20 : 1;
		state->watch_stereo = 0;
		state->nicam_on = 0;

		/* wait for tuner to settle down after a channel change */
		if (FUNC8(state, 200))
			goto restart;

		if (msp_debug)
			FUNC1(&client->dev, 2, msp_debug,
				"setting standard: %s (0x%04x)\n",
				FUNC10(std), std);

		if (std != 1) {
			/* programmed some specific mode */
			val = std;
		} else {
			/* triggered autodetect */
			FUNC12(client, 0x20, std);
			for (;;) {
				if (FUNC8(state, 100))
					goto restart;

				/* check results */
				val = FUNC7(client, 0x7e);
				if (val < 0x07ff)
					break;
				FUNC1(&client->dev, 2, msp_debug,
					"detection still in progress\n");
			}
		}
		for (i = 0; msp_stdlist[i].name != NULL; i++)
			if (msp_stdlist[i].retval == val)
				break;
		FUNC1(&client->dev, 1, msp_debug, "current standard: %s (0x%04x)\n",
			FUNC10(val), val);
		state->main   = msp_stdlist[i].main;
		state->second = msp_stdlist[i].second;
		state->std = val;
		state->rxsubchans = V4L2_TUNER_SUB_MONO;

		if (msp_amsound && !state->radio &&
		    (state->v4l2_std & V4L2_STD_SECAM) && (val != 0x0009)) {
			/* autodetection has failed, let backup */
			FUNC1(&client->dev, 1, msp_debug, "autodetection failed, switching to backup standard: %s (0x%04x)\n",
				msp_stdlist[8].name ?
					msp_stdlist[8].name : "unknown", val);
			state->std = val = 0x0009;
			FUNC12(client, 0x20, val);
		} else {
			state->detected_std = FUNC9(state->std);
		}

		/* set stereo */
		switch (val) {
		case 0x0008: /* B/G NICAM */
		case 0x000a: /* I NICAM */
		case 0x000b: /* D/K NICAM */
			if (val == 0x000a)
				state->mode = MSP_MODE_FM_NICAM2;
			else
				state->mode = MSP_MODE_FM_NICAM1;
			/* just turn on stereo */
			state->nicam_on = 1;
			state->watch_stereo = 1;
			break;
		case 0x0009:
			state->mode = MSP_MODE_AM_NICAM;
			state->nicam_on = 1;
			state->watch_stereo = 1;
			break;
		case 0x0020: /* BTSC */
			/* The pre-'G' models only have BTSC-mono */
			state->mode = MSP_MODE_BTSC;
			break;
		case 0x0040: /* FM radio */
			state->mode = MSP_MODE_FM_RADIO;
			state->rxsubchans = V4L2_TUNER_SUB_STEREO;
			/* not needed in theory if we have radio, but
			   short programming enables carrier mute */
			FUNC6(client, MSP_MODE_FM_RADIO);
			FUNC5(client, FUNC0(10.7),
					    FUNC0(10.7));
			break;
		case 0x0002:
		case 0x0003:
		case 0x0004:
		case 0x0005:
			state->mode = MSP_MODE_FM_TERRA;
			state->watch_stereo = 1;
			break;
		}

		/* set various prescales */
		FUNC13(client, 0x0d, 0x1900); /* scart */
		FUNC13(client, 0x0e, 0x3000); /* FM */
		if (state->has_nicam)
			FUNC13(client, 0x10, 0x5a00); /* nicam */

		if (state->has_i2s_conf)
			FUNC12(client, 0x40, state->i2s_mode);

		/* unmute */
		FUNC4(client);
		state->scan_in_progress = 0;
		FUNC11(state);

		/* monitor tv audio mode, the first time don't wait
		   so long to get a quick stereo/bilingual result */
		count = 3;
		while (state->watch_stereo) {
			if (FUNC8(state, count ? 1000 : 5000))
				goto restart;
			if (count)
				count--;
			FUNC16(client);
		}
	}
	FUNC1(&client->dev, 1, msp_debug, "thread: exit\n");
	return 0;
}