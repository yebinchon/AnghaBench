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
struct ov5647 {int power_count; int /*<<< orphan*/  lock; int /*<<< orphan*/  xclk; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sensor_oe_disable_regs ; 
 int /*<<< orphan*/  sensor_oe_enable_regs ; 
 int FUNC10 (struct v4l2_subdev*,int) ; 
 struct ov5647* FUNC11 (struct v4l2_subdev*) ; 
 struct i2c_client* FUNC12 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC13(struct v4l2_subdev *sd, int on)
{
	int ret = 0;
	struct ov5647 *ov5647 = FUNC11(sd);
	struct i2c_client *client = FUNC12(sd);

	FUNC7(&ov5647->lock);

	if (on && !ov5647->power_count)	{
		FUNC5(&client->dev, "OV5647 power on\n");

		ret = FUNC4(ov5647->xclk);
		if (ret < 0) {
			FUNC6(&client->dev, "clk prepare enable failed\n");
			goto out;
		}

		ret = FUNC9(sd, sensor_oe_enable_regs,
				FUNC0(sensor_oe_enable_regs));
		if (ret < 0) {
			FUNC3(ov5647->xclk);
			FUNC6(&client->dev,
				"write sensor_oe_enable_regs error\n");
			goto out;
		}

		ret = FUNC2(sd);
		if (ret < 0) {
			FUNC3(ov5647->xclk);
			FUNC6(&client->dev,
				"Camera not available, check Power\n");
			goto out;
		}
	} else if (!on && ov5647->power_count == 1) {
		FUNC5(&client->dev, "OV5647 power off\n");

		ret = FUNC9(sd, sensor_oe_disable_regs,
				FUNC0(sensor_oe_disable_regs));

		if (ret < 0)
			FUNC5(&client->dev, "disable oe failed\n");

		ret = FUNC10(sd, true);

		if (ret < 0)
			FUNC5(&client->dev, "soft stby failed\n");

		FUNC3(ov5647->xclk);
	}

	/* Update the power count. */
	ov5647->power_count += on ? 1 : -1;
	FUNC1(ov5647->power_count < 0);

out:
	FUNC8(&ov5647->lock);

	return ret;
}