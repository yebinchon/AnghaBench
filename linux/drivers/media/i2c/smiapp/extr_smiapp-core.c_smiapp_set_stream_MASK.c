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
struct smiapp_sensor {int streaming; TYPE_1__* src; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  sd; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct smiapp_sensor*) ; 
 int FUNC6 (struct smiapp_sensor*) ; 
 struct smiapp_sensor* FUNC7 (struct v4l2_subdev*) ; 
 struct i2c_client* FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct v4l2_subdev *subdev, int enable)
{
	struct smiapp_sensor *sensor = FUNC7(subdev);
	struct i2c_client *client = FUNC8(&sensor->src->sd);
	int rval;

	if (sensor->streaming == enable)
		return 0;

	if (enable) {
		rval = FUNC0(&client->dev);
		if (rval < 0) {
			if (rval != -EBUSY && rval != -EAGAIN)
				FUNC4(&client->dev);
			FUNC2(&client->dev);
			return rval;
		}

		sensor->streaming = true;

		rval = FUNC5(sensor);
		if (rval < 0)
			sensor->streaming = false;
	} else {
		rval = FUNC6(sensor);
		sensor->streaming = false;
		FUNC1(&client->dev);
		FUNC3(&client->dev);
	}

	return rval;
}