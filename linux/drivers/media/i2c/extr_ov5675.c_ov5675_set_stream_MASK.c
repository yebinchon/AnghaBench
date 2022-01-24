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
struct ov5675 {int streaming; int /*<<< orphan*/  mutex; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ov5675*) ; 
 int /*<<< orphan*/  FUNC3 (struct ov5675*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct ov5675* FUNC7 (struct v4l2_subdev*) ; 
 struct i2c_client* FUNC8 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC9(struct v4l2_subdev *sd, int enable)
{
	struct ov5675 *ov5675 = FUNC7(sd);
	struct i2c_client *client = FUNC8(sd);
	int ret = 0;

	if (ov5675->streaming == enable)
		return 0;

	FUNC0(&ov5675->mutex);
	if (enable) {
		ret = FUNC4(&client->dev);
		if (ret < 0) {
			FUNC6(&client->dev);
			FUNC1(&ov5675->mutex);
			return ret;
		}

		ret = FUNC2(ov5675);
		if (ret) {
			enable = 0;
			FUNC3(ov5675);
			FUNC5(&client->dev);
		}
	} else {
		FUNC3(ov5675);
		FUNC5(&client->dev);
	}

	ov5675->streaming = enable;
	FUNC1(&ov5675->mutex);

	return ret;
}