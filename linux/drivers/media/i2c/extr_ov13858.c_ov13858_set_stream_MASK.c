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
struct ov13858 {int streaming; int /*<<< orphan*/  mutex; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ov13858*) ; 
 int /*<<< orphan*/  FUNC3 (struct ov13858*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct ov13858* FUNC7 (struct v4l2_subdev*) ; 
 struct i2c_client* FUNC8 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC9(struct v4l2_subdev *sd, int enable)
{
	struct ov13858 *ov13858 = FUNC7(sd);
	struct i2c_client *client = FUNC8(sd);
	int ret = 0;

	FUNC0(&ov13858->mutex);
	if (ov13858->streaming == enable) {
		FUNC1(&ov13858->mutex);
		return 0;
	}

	if (enable) {
		ret = FUNC4(&client->dev);
		if (ret < 0) {
			FUNC6(&client->dev);
			goto err_unlock;
		}

		/*
		 * Apply default & customized values
		 * and then start streaming.
		 */
		ret = FUNC2(ov13858);
		if (ret)
			goto err_rpm_put;
	} else {
		FUNC3(ov13858);
		FUNC5(&client->dev);
	}

	ov13858->streaming = enable;
	FUNC1(&ov13858->mutex);

	return ret;

err_rpm_put:
	FUNC5(&client->dev);
err_unlock:
	FUNC1(&ov13858->mutex);

	return ret;
}