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
struct ak7375_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ak7375_device*) ; 
 struct v4l2_subdev* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ak7375_device* FUNC4 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct v4l2_subdev *sd = FUNC1(client);
	struct ak7375_device *ak7375_dev = FUNC4(sd);

	FUNC0(ak7375_dev);
	FUNC2(&client->dev);
	FUNC3(&client->dev);

	return 0;
}