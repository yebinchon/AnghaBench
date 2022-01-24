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
struct ov2685 {int streaming; int /*<<< orphan*/  mutex; struct i2c_client* client; int /*<<< orphan*/  ctrl_handler; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  OV2685_REG_VALUE_08BIT ; 
 int /*<<< orphan*/  REG_SC_CTRL_MODE ; 
 int /*<<< orphan*/  SC_CTRL_MODE_STANDBY ; 
 int /*<<< orphan*/  SC_CTRL_MODE_STREAMING ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct ov2685* FUNC7 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC8(struct v4l2_subdev *sd, int on)
{
	struct ov2685 *ov2685 = FUNC7(sd);
	struct i2c_client *client = ov2685->client;
	int ret = 0;

	FUNC1(&ov2685->mutex);

	on = !!on;
	if (on == ov2685->streaming)
		goto unlock_and_return;

	if (on) {
		ret = FUNC4(&ov2685->client->dev);
		if (ret < 0) {
			FUNC6(&client->dev);
			goto unlock_and_return;
		}
		ret = FUNC0(&ov2685->ctrl_handler);
		if (ret) {
			FUNC5(&client->dev);
			goto unlock_and_return;
		}
		ret = FUNC3(client, REG_SC_CTRL_MODE,
				OV2685_REG_VALUE_08BIT, SC_CTRL_MODE_STREAMING);
		if (ret) {
			FUNC5(&client->dev);
			goto unlock_and_return;
		}
	} else {
		FUNC3(client, REG_SC_CTRL_MODE,
				OV2685_REG_VALUE_08BIT, SC_CTRL_MODE_STANDBY);
		FUNC5(&ov2685->client->dev);
	}

	ov2685->streaming = on;

unlock_and_return:
	FUNC2(&ov2685->mutex);

	return ret;
}