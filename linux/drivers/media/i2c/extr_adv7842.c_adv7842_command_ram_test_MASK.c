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
struct v4l2_subdev {int dummy; } ;
struct v4l2_dv_timings {int dummy; } ;
struct TYPE_2__ {struct adv7842_platform_data* platform_data; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct adv7842_state {struct v4l2_dv_timings timings; int /*<<< orphan*/  vid_std_select; } ;
struct adv7842_platform_data {int /*<<< orphan*/  sd_ram_ddr; int /*<<< orphan*/  sd_ram_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADV7842_EDID_PORT_A ; 
 int /*<<< orphan*/  ADV7842_EDID_PORT_B ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*) ; 
 int FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*,struct adv7842_platform_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,struct v4l2_dv_timings*) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC7 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC8 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC9 (struct v4l2_dv_timings*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 struct adv7842_state* FUNC11 (struct v4l2_subdev*) ; 
 struct i2c_client* FUNC12 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC13 (struct v4l2_subdev*,char*) ; 

__attribute__((used)) static int FUNC14(struct v4l2_subdev *sd)
{
	struct i2c_client *client = FUNC12(sd);
	struct adv7842_state *state = FUNC11(sd);
	struct adv7842_platform_data *pdata = client->dev.platform_data;
	struct v4l2_dv_timings timings;
	int ret = 0;

	if (!pdata)
		return -ENODEV;

	if (!pdata->sd_ram_size || !pdata->sd_ram_ddr) {
		FUNC13(sd, "no sdram or no ddr sdram\n");
		return -EINVAL;
	}

	FUNC8(sd);

	FUNC2(sd, pdata);

	/* run ram test */
	ret = FUNC1(sd);

	FUNC8(sd);

	FUNC2(sd, pdata);

	/* and re-init chip and state */
	FUNC0(sd);

	FUNC4(sd);

	FUNC10(sd, state->vid_std_select);

	FUNC7(sd);

	FUNC6(sd);
	FUNC5(sd, ADV7842_EDID_PORT_A);
	FUNC5(sd, ADV7842_EDID_PORT_B);

	timings = state->timings;

	FUNC9(&state->timings, 0, sizeof(struct v4l2_dv_timings));

	FUNC3(sd, &timings);

	return ret;
}