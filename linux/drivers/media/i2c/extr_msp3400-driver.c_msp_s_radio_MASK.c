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
struct v4l2_subdev {int dummy; } ;
struct msp_state {int radio; int opmode; scalar_t__ watch_stereo; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (double) ; 
 int /*<<< orphan*/  MSP_MODE_FM_RADIO ; 
#define  OPMODE_AUTODETECT 130 
#define  OPMODE_AUTOSELECT 129 
#define  OPMODE_MANUAL 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msp_debug ; 
 int /*<<< orphan*/  FUNC4 (struct msp_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*) ; 
 struct msp_state* FUNC6 (struct v4l2_subdev*) ; 
 struct i2c_client* FUNC7 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC8(struct v4l2_subdev *sd)
{
	struct msp_state *state = FUNC6(sd);
	struct i2c_client *client = FUNC7(sd);

	if (state->radio)
		return 0;
	state->radio = 1;
	FUNC1(&client->dev, 1, msp_debug, "switching to radio mode\n");
	state->watch_stereo = 0;
	switch (state->opmode) {
	case OPMODE_MANUAL:
		/* set msp3400 to FM radio mode */
		FUNC3(client, MSP_MODE_FM_RADIO);
		FUNC2(client, FUNC0(10.7),
				FUNC0(10.7));
		FUNC4(state);
		break;
	case OPMODE_AUTODETECT:
	case OPMODE_AUTOSELECT:
		/* the thread will do for us */
		FUNC5(client);
		break;
	}
	return 0;
}