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
struct mt9p031 {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  addr; int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  MT9P031_CHIP_VERSION ; 
 scalar_t__ MT9P031_CHIP_VERSION_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mt9p031*) ; 
 int FUNC3 (struct mt9p031*) ; 
 scalar_t__ FUNC4 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 struct mt9p031* FUNC5 (struct v4l2_subdev*) ; 
 struct i2c_client* FUNC6 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC7(struct v4l2_subdev *subdev)
{
	struct i2c_client *client = FUNC6(subdev);
	struct mt9p031 *mt9p031 = FUNC5(subdev);
	s32 data;
	int ret;

	ret = FUNC3(mt9p031);
	if (ret < 0) {
		FUNC0(&client->dev, "MT9P031 power up failed\n");
		return ret;
	}

	/* Read out the chip version register */
	data = FUNC4(client, MT9P031_CHIP_VERSION);
	FUNC2(mt9p031);

	if (data != MT9P031_CHIP_VERSION_VALUE) {
		FUNC0(&client->dev, "MT9P031 not detected, wrong version "
			"0x%04x\n", data);
		return -ENODEV;
	}

	FUNC1(&client->dev, "MT9P031 detected at address 0x%02x\n",
		 client->addr);

	return 0;
}