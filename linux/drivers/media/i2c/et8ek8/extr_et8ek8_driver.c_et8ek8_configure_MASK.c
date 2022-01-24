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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct et8ek8_sensor {int /*<<< orphan*/  ctrl_handler; TYPE_1__* current_reglist; struct v4l2_subdev subdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC4(struct et8ek8_sensor *sensor)
{
	struct v4l2_subdev *subdev = &sensor->subdev;
	struct i2c_client *client = FUNC3(subdev);
	int rval;

	rval = FUNC1(client, sensor->current_reglist->regs);
	if (rval)
		goto fail;

	/* Controls set while the power to the sensor is turned off are saved
	 * but not applied to the hardware. Now that we're about to start
	 * streaming apply all the current values to the hardware.
	 */
	rval = FUNC2(&sensor->ctrl_handler);
	if (rval)
		goto fail;

	return 0;

fail:
	FUNC0(&client->dev, "sensor configuration failed\n");

	return rval;
}