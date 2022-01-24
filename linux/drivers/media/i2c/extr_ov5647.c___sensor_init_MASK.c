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
typedef  int u8 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OV5647_SW_STANDBY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  ov5647_640x480 ; 
 int FUNC2 (struct v4l2_subdev*,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct v4l2_subdev*) ; 
 int FUNC5 (struct v4l2_subdev*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC7 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC8(struct v4l2_subdev *sd)
{
	int ret;
	u8 resetval, rdval;
	struct i2c_client *client = FUNC7(sd);

	ret = FUNC2(sd, OV5647_SW_STANDBY, &rdval);
	if (ret < 0)
		return ret;

	ret = FUNC6(sd, ov5647_640x480,
					FUNC0(ov5647_640x480));
	if (ret < 0) {
		FUNC1(&client->dev, "write sensor default regs error\n");
		return ret;
	}

	ret = FUNC3(sd, 0);
	if (ret < 0)
		return ret;

	ret = FUNC2(sd, OV5647_SW_STANDBY, &resetval);
	if (ret < 0)
		return ret;

	if (!(resetval & 0x01)) {
		FUNC1(&client->dev, "Device was in SW standby");
		ret = FUNC5(sd, OV5647_SW_STANDBY, 0x01);
		if (ret < 0)
			return ret;
	}

	/*
	 * stream off to make the clock lane into LP-11 state.
	 */
	return FUNC4(sd);
}