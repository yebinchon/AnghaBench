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
struct ov5695 {int streaming; int /*<<< orphan*/  mutex; struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct ov5695*) ; 
 int /*<<< orphan*/  FUNC1 (struct ov5695*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct ov5695* FUNC7 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC8 (struct v4l2_subdev*,char*) ; 

__attribute__((used)) static int FUNC9(struct v4l2_subdev *sd, int on)
{
	struct ov5695 *ov5695 = FUNC7(sd);
	struct i2c_client *client = ov5695->client;
	int ret = 0;

	FUNC2(&ov5695->mutex);
	on = !!on;
	if (on == ov5695->streaming)
		goto unlock_and_return;

	if (on) {
		ret = FUNC4(&client->dev);
		if (ret < 0) {
			FUNC6(&client->dev);
			goto unlock_and_return;
		}

		ret = FUNC0(ov5695);
		if (ret) {
			FUNC8(sd, "start stream failed while write regs\n");
			FUNC5(&client->dev);
			goto unlock_and_return;
		}
	} else {
		FUNC1(ov5695);
		FUNC5(&client->dev);
	}

	ov5695->streaming = on;

unlock_and_return:
	FUNC3(&ov5695->mutex);

	return ret;
}