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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct et8ek8_sensor {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_SUBDEV_FORMAT_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct et8ek8_sensor*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev_attr_priv_mem ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct v4l2_subdev*) ; 
 int FUNC6 (struct et8ek8_sensor*) ; 
 struct et8ek8_sensor* FUNC7 (struct v4l2_subdev*) ; 
 struct i2c_client* FUNC8 (struct v4l2_subdev*) ; 

__attribute__((used)) static int
FUNC9(struct v4l2_subdev *subdev)
{
	struct et8ek8_sensor *sensor = FUNC7(subdev);
	struct i2c_client *client = FUNC8(subdev);
	int rval;

	FUNC1(&client->dev, "registered!");

	rval = FUNC3(&client->dev, &dev_attr_priv_mem);
	if (rval) {
		FUNC2(&client->dev, "could not register sysfs entry\n");
		return rval;
	}

	rval = FUNC5(subdev);
	if (rval)
		goto err_file;

	rval = FUNC6(sensor);
	if (rval) {
		FUNC2(&client->dev, "controls initialization failed\n");
		goto err_file;
	}

	FUNC0(sensor, NULL, 0, V4L2_SUBDEV_FORMAT_ACTIVE);

	return 0;

err_file:
	FUNC4(&client->dev, &dev_attr_priv_mem);

	return rval;
}