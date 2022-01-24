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
struct msp_state {scalar_t__ mode; int std; int acb; int watch_stereo; int /*<<< orphan*/  detected_std; scalar_t__ force_btsc; scalar_t__ radio; scalar_t__ scan_in_progress; scalar_t__ restart; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ MSP_MODE_EXTERN ; 
 int /*<<< orphan*/  V4L2_STD_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  msp_debug ; 
 int FUNC4 (struct i2c_client*,int) ; 
 scalar_t__ FUNC5 (struct msp_state*,int) ; 
 int msp_standard ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct msp_state*) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,int,int) ; 
 scalar_t__ FUNC10 (struct i2c_client*,int,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 struct msp_state* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct i2c_client*) ; 

int FUNC14(void *data)
{
	struct i2c_client *client = data;
	struct msp_state *state = FUNC12(FUNC1(client));
	int val, i;

	FUNC0(&client->dev, 1, msp_debug, "msp34xxg daemon started\n");
	state->detected_std = V4L2_STD_ALL;
	FUNC11();
	for (;;) {
		FUNC0(&client->dev, 2, msp_debug, "msp34xxg thread: sleep\n");
		FUNC5(state, -1);
		FUNC0(&client->dev, 2, msp_debug, "msp34xxg thread: wakeup\n");

restart:
		FUNC0(&client->dev, 1, msp_debug, "thread: restart scan\n");
		state->restart = 0;
		if (FUNC2())
			break;

		if (state->mode == MSP_MODE_EXTERN) {
			/* no carrier scan needed, just unmute */
			FUNC0(&client->dev, 1, msp_debug,
				"thread: no carrier scan\n");
			state->scan_in_progress = 0;
			FUNC8(state);
			continue;
		}

		/* setup the chip*/
		FUNC3(client);
		state->std = state->radio ? 0x40 :
			(state->force_btsc && msp_standard == 1) ? 32 : msp_standard;
		FUNC9(client, 0x20, state->std);
		/* start autodetect */
		if (state->std != 1)
			goto unmute;

		/* watch autodetect */
		FUNC0(&client->dev, 1, msp_debug,
			"started autodetect, waiting for result\n");
		for (i = 0; i < 10; i++) {
			if (FUNC5(state, 100))
				goto restart;

			/* check results */
			val = FUNC4(client, 0x7e);
			if (val < 0x07ff) {
				state->std = val;
				break;
			}
			FUNC0(&client->dev, 2, msp_debug,
				"detection still in progress\n");
		}
		if (state->std == 1) {
			FUNC0(&client->dev, 1, msp_debug,
				"detection still in progress after 10 tries. giving up.\n");
			continue;
		}

unmute:
		FUNC0(&client->dev, 1, msp_debug,
			"detected standard: %s (0x%04x)\n",
			FUNC7(state->std), state->std);
		state->detected_std = FUNC6(state->std);

		if (state->std == 9) {
			/* AM NICAM mode */
			FUNC10(client, 0x0e, 0x7c00);
		}

		/* unmute: dispatch sound to scart output, set scart volume */
		FUNC8(state);

		/* restore ACB */
		if (FUNC10(client, 0x13, state->acb))
			return -1;

		/* the periodic stereo/SAP check is only relevant for
		   the 0x20 standard (BTSC) */
		if (state->std != 0x20)
			continue;

		state->watch_stereo = 1;

		/* monitor tv audio mode, the first time don't wait
		   in order to get a quick stereo/SAP update */
		FUNC13(client);
		while (state->watch_stereo) {
			FUNC13(client);
			if (FUNC5(state, 5000))
				goto restart;
		}
	}
	FUNC0(&client->dev, 1, msp_debug, "thread: exit\n");
	return 0;
}