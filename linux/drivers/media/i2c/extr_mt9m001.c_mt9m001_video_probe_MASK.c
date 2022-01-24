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
struct mt9m001 {int /*<<< orphan*/  hdl; int /*<<< orphan*/ * fmts; int /*<<< orphan*/ * fmt; void* num_fmts; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
typedef  int s32 ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int ENODEV ; 
 int /*<<< orphan*/  MT9M001_CHIP_ENABLE ; 
 int /*<<< orphan*/  MT9M001_CHIP_VERSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,char*) ; 
 void* mt9m001_colour_fmts ; 
 int FUNC4 (struct i2c_client*) ; 
 void* mt9m001_monochrome_fmts ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct mt9m001* FUNC7 (struct i2c_client*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client)
{
	struct mt9m001 *mt9m001 = FUNC7(client);
	s32 data;
	int ret;

	/* Enable the chip */
	data = FUNC6(client, MT9M001_CHIP_ENABLE, 1);
	FUNC1(&client->dev, "write: %d\n", data);

	/* Read out the chip version register */
	data = FUNC5(client, MT9M001_CHIP_VERSION);

	/* must be 0x8411 or 0x8421 for colour sensor and 8431 for bw */
	switch (data) {
	case 0x8411:
	case 0x8421:
		mt9m001->fmts = mt9m001_colour_fmts;
		mt9m001->num_fmts = FUNC0(mt9m001_colour_fmts);
		break;
	case 0x8431:
		mt9m001->fmts = mt9m001_monochrome_fmts;
		mt9m001->num_fmts = FUNC0(mt9m001_monochrome_fmts);
		break;
	default:
		FUNC2(&client->dev,
			"No MT9M001 chip detected, register read %x\n", data);
		ret = -ENODEV;
		goto done;
	}

	mt9m001->fmt = &mt9m001->fmts[0];

	FUNC3(&client->dev, "Detected a MT9M001 chip ID %x (%s)\n", data,
		 data == 0x8431 ? "C12STM" : "C12ST");

	ret = FUNC4(client);
	if (ret < 0) {
		FUNC2(&client->dev, "Failed to initialise the camera\n");
		goto done;
	}

	/* mt9m001_init() has reset the chip, returning registers to defaults */
	ret = FUNC8(&mt9m001->hdl);

done:
	return ret;
}