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
struct mt9m001 {int streaming; int /*<<< orphan*/  mutex; int /*<<< orphan*/  hdl; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT9M001_OUTPUT_CONTROL ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct mt9m001* FUNC7 (struct i2c_client*) ; 
 struct i2c_client* FUNC8 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC9(struct v4l2_subdev *sd, int enable)
{
	struct i2c_client *client = FUNC8(sd);
	struct mt9m001 *mt9m001 = FUNC7(client);
	int ret = 0;

	FUNC2(&mt9m001->mutex);

	if (mt9m001->streaming == enable)
		goto done;

	if (enable) {
		ret = FUNC4(&client->dev);
		if (ret < 0)
			goto put_unlock;

		ret = FUNC1(sd);
		if (ret)
			goto put_unlock;

		ret = FUNC0(&mt9m001->hdl);
		if (ret)
			goto put_unlock;

		/* Switch to master "normal" mode */
		ret = FUNC6(client, MT9M001_OUTPUT_CONTROL, 2);
		if (ret < 0)
			goto put_unlock;
	} else {
		/* Switch to master stop sensor readout */
		FUNC6(client, MT9M001_OUTPUT_CONTROL, 0);
		FUNC5(&client->dev);
	}

	mt9m001->streaming = enable;
done:
	FUNC3(&mt9m001->mutex);

	return 0;

put_unlock:
	FUNC5(&client->dev);
	FUNC3(&mt9m001->mutex);

	return ret;
}