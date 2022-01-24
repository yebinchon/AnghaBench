#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct msp_state {int detected_std; scalar_t__ mode; int scan_in_progress; int watch_stereo; int nicam_on; int v4l2_std; int /*<<< orphan*/  main; int /*<<< orphan*/  second; int /*<<< orphan*/  has_nicam; scalar_t__ radio; scalar_t__ restart; } ;
struct msp3400c_carrier_detect {int /*<<< orphan*/  cdo; int /*<<< orphan*/  name; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct msp3400c_carrier_detect*) ; 
 int /*<<< orphan*/  FUNC1 (double) ; 
 int /*<<< orphan*/  MSP_MODE_AM_DETECT ; 
 int /*<<< orphan*/  MSP_MODE_AM_NICAM ; 
 scalar_t__ MSP_MODE_EXTERN ; 
 int /*<<< orphan*/  MSP_MODE_FM_NICAM1 ; 
 int /*<<< orphan*/  MSP_MODE_FM_NICAM2 ; 
 int /*<<< orphan*/  MSP_MODE_FM_TERRA ; 
 int V4L2_STD_ALL ; 
 int V4L2_STD_BG ; 
 void* V4L2_STD_DK ; 
 int V4L2_STD_L ; 
 int V4L2_STD_MN ; 
 int V4L2_STD_PAL_H ; 
 int V4L2_STD_PAL_I ; 
 int V4L2_STD_SECAM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*) ; 
 scalar_t__ FUNC4 () ; 
 struct msp3400c_carrier_detect* msp3400c_carrier_detect_55 ; 
 struct msp3400c_carrier_detect* msp3400c_carrier_detect_65 ; 
 struct msp3400c_carrier_detect* msp3400c_carrier_detect_main ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 scalar_t__ msp_amsound ; 
 scalar_t__ msp_debug ; 
 int FUNC9 (struct i2c_client*,int) ; 
 scalar_t__ FUNC10 (struct msp_state*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct msp_state*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 struct msp_state* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct i2c_client*) ; 

int FUNC15(void *data)
{
	struct i2c_client *client = data;
	struct msp_state *state = FUNC13(FUNC3(client));
	struct msp3400c_carrier_detect *cd;
	int count, max1, max2, val1, val2, val, i;

	FUNC2(&client->dev, 1, msp_debug, "msp3400 daemon started\n");
	state->detected_std = V4L2_STD_ALL;
	FUNC12();
	for (;;) {
		FUNC2(&client->dev, 2, msp_debug, "msp3400 thread: sleep\n");
		FUNC10(state, -1);
		FUNC2(&client->dev, 2, msp_debug, "msp3400 thread: wakeup\n");

restart:
		FUNC2(&client->dev, 2, msp_debug, "thread: restart scan\n");
		state->restart = 0;
		if (FUNC4())
			break;

		if (state->radio || MSP_MODE_EXTERN == state->mode) {
			/* no carrier scan, just unmute */
			FUNC2(&client->dev, 1, msp_debug,
				"thread: no carrier scan\n");
			state->scan_in_progress = 0;
			FUNC11(state);
			continue;
		}

		/* mute audio */
		state->scan_in_progress = 1;
		FUNC11(state);

		FUNC8(client, MSP_MODE_AM_DETECT);
		val1 = val2 = 0;
		max1 = max2 = -1;
		state->watch_stereo = 0;
		state->nicam_on = 0;

		/* wait for tuner to settle down after a channel change */
		if (FUNC10(state, 200))
			goto restart;

		/* carrier detect pass #1 -- main carrier */
		cd = msp3400c_carrier_detect_main;
		count = FUNC0(msp3400c_carrier_detect_main);

		if (msp_amsound && (state->v4l2_std & V4L2_STD_SECAM)) {
			/* autodetect doesn't work well with AM ... */
			max1 = 3;
			count = 0;
			FUNC2(&client->dev, 1, msp_debug, "AM sound override\n");
		}

		for (i = 0; i < count; i++) {
			FUNC7(client, cd[i].cdo, cd[i].cdo);
			if (FUNC10(state, 100))
				goto restart;
			val = FUNC9(client, 0x1b);
			if (val > 32767)
				val -= 65536;
			if (val1 < val)
				val1 = val, max1 = i;
			FUNC2(&client->dev, 1, msp_debug,
				"carrier1 val: %5d / %s\n", val, cd[i].name);
		}

		/* carrier detect pass #2 -- second (stereo) carrier */
		switch (max1) {
		case 1: /* 5.5 */
			cd = msp3400c_carrier_detect_55;
			count = FUNC0(msp3400c_carrier_detect_55);
			break;
		case 3: /* 6.5 */
			cd = msp3400c_carrier_detect_65;
			count = FUNC0(msp3400c_carrier_detect_65);
			break;
		case 0: /* 4.5 */
		case 2: /* 6.0 */
		default:
			cd = NULL;
			count = 0;
			break;
		}

		if (msp_amsound && (state->v4l2_std & V4L2_STD_SECAM)) {
			/* autodetect doesn't work well with AM ... */
			cd = NULL;
			count = 0;
			max2 = 0;
		}
		for (i = 0; i < count; i++) {
			FUNC7(client, cd[i].cdo, cd[i].cdo);
			if (FUNC10(state, 100))
				goto restart;
			val = FUNC9(client, 0x1b);
			if (val > 32767)
				val -= 65536;
			if (val2 < val)
				val2 = val, max2 = i;
			FUNC2(&client->dev, 1, msp_debug,
				"carrier2 val: %5d / %s\n", val, cd[i].name);
		}

		/* program the msp3400 according to the results */
		state->main = msp3400c_carrier_detect_main[max1].cdo;
		switch (max1) {
		case 1: /* 5.5 */
			state->detected_std = V4L2_STD_BG | V4L2_STD_PAL_H;
			if (max2 == 0) {
				/* B/G FM-stereo */
				state->second = msp3400c_carrier_detect_55[max2].cdo;
				FUNC8(client, MSP_MODE_FM_TERRA);
				state->watch_stereo = 1;
			} else if (max2 == 1 && state->has_nicam) {
				/* B/G NICAM */
				state->second = msp3400c_carrier_detect_55[max2].cdo;
				FUNC8(client, MSP_MODE_FM_NICAM1);
				state->nicam_on = 1;
				state->watch_stereo = 1;
			} else {
				goto no_second;
			}
			break;
		case 2: /* 6.0 */
			/* PAL I NICAM */
			state->detected_std = V4L2_STD_PAL_I;
			state->second = FUNC1(6.552);
			FUNC8(client, MSP_MODE_FM_NICAM2);
			state->nicam_on = 1;
			state->watch_stereo = 1;
			break;
		case 3: /* 6.5 */
			if (max2 == 1 || max2 == 2) {
				/* D/K FM-stereo */
				state->second = msp3400c_carrier_detect_65[max2].cdo;
				FUNC8(client, MSP_MODE_FM_TERRA);
				state->watch_stereo = 1;
				state->detected_std = V4L2_STD_DK;
			} else if (max2 == 0 && (state->v4l2_std & V4L2_STD_SECAM)) {
				/* L NICAM or AM-mono */
				state->second = msp3400c_carrier_detect_65[max2].cdo;
				FUNC8(client, MSP_MODE_AM_NICAM);
				state->watch_stereo = 1;
				state->detected_std = V4L2_STD_L;
			} else if (max2 == 0 && state->has_nicam) {
				/* D/K NICAM */
				state->second = msp3400c_carrier_detect_65[max2].cdo;
				FUNC8(client, MSP_MODE_FM_NICAM1);
				state->nicam_on = 1;
				state->watch_stereo = 1;
				state->detected_std = V4L2_STD_DK;
			} else {
				goto no_second;
			}
			break;
		case 0: /* 4.5 */
			state->detected_std = V4L2_STD_MN;
			/* fall-through */
		default:
no_second:
			state->second = msp3400c_carrier_detect_main[max1].cdo;
			FUNC8(client, MSP_MODE_FM_TERRA);
			break;
		}
		FUNC7(client, state->second, state->main);

		/* unmute */
		state->scan_in_progress = 0;
		FUNC6(client);
		FUNC11(state);

		if (msp_debug)
			FUNC5(client);

		/* monitor tv audio mode, the first time don't wait
		   so long to get a quick stereo/bilingual result */
		count = 3;
		while (state->watch_stereo) {
			if (FUNC10(state, count ? 1000 : 5000))
				goto restart;
			if (count)
				count--;
			FUNC14(client);
		}
	}
	FUNC2(&client->dev, 1, msp_debug, "thread: exit\n");
	return 0;
}