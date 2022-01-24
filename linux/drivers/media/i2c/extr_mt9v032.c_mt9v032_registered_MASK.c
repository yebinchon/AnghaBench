#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct v4l2_subdev {int dummy; } ;
struct mt9v032 {TYPE_1__* version; int /*<<< orphan*/  regmap; } ;
struct i2c_client {int /*<<< orphan*/  addr; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {scalar_t__ version; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int ENODEV ; 
 int /*<<< orphan*/  MT9V032_CHIP_VERSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (struct mt9v032*) ; 
 int /*<<< orphan*/  FUNC4 (struct mt9v032*) ; 
 int FUNC5 (struct mt9v032*) ; 
 TYPE_1__* mt9v032_versions ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 struct mt9v032* FUNC7 (struct v4l2_subdev*) ; 
 struct i2c_client* FUNC8 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC9(struct v4l2_subdev *subdev)
{
	struct i2c_client *client = FUNC8(subdev);
	struct mt9v032 *mt9v032 = FUNC7(subdev);
	unsigned int i;
	u32 version;
	int ret;

	FUNC2(&client->dev, "Probing MT9V032 at address 0x%02x\n",
			client->addr);

	ret = FUNC5(mt9v032);
	if (ret < 0) {
		FUNC1(&client->dev, "MT9V032 power up failed\n");
		return ret;
	}

	/* Read and check the sensor version */
	ret = FUNC6(mt9v032->regmap, MT9V032_CHIP_VERSION, &version);

	FUNC4(mt9v032);

	if (ret < 0) {
		FUNC1(&client->dev, "Failed reading chip version\n");
		return ret;
	}

	for (i = 0; i < FUNC0(mt9v032_versions); ++i) {
		if (mt9v032_versions[i].version == version) {
			mt9v032->version = &mt9v032_versions[i];
			break;
		}
	}

	if (mt9v032->version == NULL) {
		FUNC1(&client->dev, "Unsupported chip version 0x%04x\n",
			version);
		return -ENODEV;
	}

	FUNC2(&client->dev, "%s detected at address 0x%02x\n",
		 mt9v032->version->name, client->addr);

	FUNC3(mt9v032);

	return ret;
}