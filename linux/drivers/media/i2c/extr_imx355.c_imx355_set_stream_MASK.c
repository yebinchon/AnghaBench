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
struct imx355 {int streaming; int /*<<< orphan*/  mutex; int /*<<< orphan*/  hflip; int /*<<< orphan*/  vflip; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct imx355*) ; 
 int /*<<< orphan*/  FUNC2 (struct imx355*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct imx355* FUNC8 (struct v4l2_subdev*) ; 
 struct i2c_client* FUNC9 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC10(struct v4l2_subdev *sd, int enable)
{
	struct imx355 *imx355 = FUNC8(sd);
	struct i2c_client *client = FUNC9(sd);
	int ret = 0;

	FUNC3(&imx355->mutex);
	if (imx355->streaming == enable) {
		FUNC4(&imx355->mutex);
		return 0;
	}

	if (enable) {
		ret = FUNC5(&client->dev);
		if (ret < 0) {
			FUNC7(&client->dev);
			goto err_unlock;
		}

		/*
		 * Apply default & customized values
		 * and then start streaming.
		 */
		ret = FUNC1(imx355);
		if (ret)
			goto err_rpm_put;
	} else {
		FUNC2(imx355);
		FUNC6(&client->dev);
	}

	imx355->streaming = enable;

	/* vflip and hflip cannot change during streaming */
	FUNC0(imx355->vflip, enable);
	FUNC0(imx355->hflip, enable);

	FUNC4(&imx355->mutex);

	return ret;

err_rpm_put:
	FUNC6(&client->dev);
err_unlock:
	FUNC4(&imx355->mutex);

	return ret;
}