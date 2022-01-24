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
struct v4l2_subdev {char* name; } ;
struct msp_state {scalar_t__ opmode; int mode; int rxsubchans; char const* audmode; char const* acb; int /*<<< orphan*/  route_out; int /*<<< orphan*/  route_in; int /*<<< orphan*/  std; int /*<<< orphan*/  hdl; int /*<<< orphan*/  rev2; int /*<<< orphan*/  rev1; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  prefix ;

/* Variables and functions */
#define  MSP_MODE_AM_DETECT 136 
#define  MSP_MODE_AM_NICAM 135 
#define  MSP_MODE_BTSC 134 
#define  MSP_MODE_EXTERN 133 
#define  MSP_MODE_FM_NICAM1 132 
#define  MSP_MODE_FM_NICAM2 131 
#define  MSP_MODE_FM_RADIO 130 
#define  MSP_MODE_FM_SAT 129 
#define  MSP_MODE_FM_TERRA 128 
 scalar_t__ OPMODE_AUTODETECT ; 
 scalar_t__ OPMODE_AUTOSELECT ; 
 scalar_t__ OPMODE_MANUAL ; 
 int /*<<< orphan*/  V4L2_SUBDEV_NAME_SIZE ; 
 int V4L2_TUNER_SUB_LANG2 ; 
 int V4L2_TUNER_SUB_STEREO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*) ; 
 struct msp_state* FUNC4 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 struct i2c_client* FUNC6 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC7(struct v4l2_subdev *sd)
{
	struct msp_state *state = FUNC4(sd);
	struct i2c_client *client = FUNC6(sd);
	const char *p;
	char prefix[V4L2_SUBDEV_NAME_SIZE + 20];

	if (state->opmode == OPMODE_AUTOSELECT)
		FUNC1(client);
	FUNC0(&client->dev, "%s rev1 = 0x%04x rev2 = 0x%04x\n",
			client->name, state->rev1, state->rev2);
	FUNC3(prefix, sizeof(prefix), "%s: Audio:    ", sd->name);
	FUNC5(&state->hdl, prefix);
	switch (state->mode) {
		case MSP_MODE_AM_DETECT: p = "AM (for carrier detect)"; break;
		case MSP_MODE_FM_RADIO: p = "FM Radio"; break;
		case MSP_MODE_FM_TERRA: p = "Terrestrial FM-mono/stereo"; break;
		case MSP_MODE_FM_SAT: p = "Satellite FM-mono"; break;
		case MSP_MODE_FM_NICAM1: p = "NICAM/FM (B/G, D/K)"; break;
		case MSP_MODE_FM_NICAM2: p = "NICAM/FM (I)"; break;
		case MSP_MODE_AM_NICAM: p = "NICAM/AM (L)"; break;
		case MSP_MODE_BTSC: p = "BTSC"; break;
		case MSP_MODE_EXTERN: p = "External input"; break;
		default: p = "unknown"; break;
	}
	if (state->mode == MSP_MODE_EXTERN) {
		FUNC0(&client->dev, "Mode:     %s\n", p);
	} else if (state->opmode == OPMODE_MANUAL) {
		FUNC0(&client->dev, "Mode:     %s (%s%s)\n", p,
				(state->rxsubchans & V4L2_TUNER_SUB_STEREO) ? "stereo" : "mono",
				(state->rxsubchans & V4L2_TUNER_SUB_LANG2) ? ", dual" : "");
	} else {
		if (state->opmode == OPMODE_AUTODETECT)
			FUNC0(&client->dev, "Mode:     %s\n", p);
		FUNC0(&client->dev, "Standard: %s (%s%s)\n",
				FUNC2(state->std),
				(state->rxsubchans & V4L2_TUNER_SUB_STEREO) ? "stereo" : "mono",
				(state->rxsubchans & V4L2_TUNER_SUB_LANG2) ? ", dual" : "");
	}
	FUNC0(&client->dev, "Audmode:  0x%04x\n", state->audmode);
	FUNC0(&client->dev, "Routing:  0x%08x (input) 0x%08x (output)\n",
			state->route_in, state->route_out);
	FUNC0(&client->dev, "ACB:      0x%04x\n", state->acb);
	return 0;
}