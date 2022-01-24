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
struct mt9p031 {int /*<<< orphan*/  clk_div; int /*<<< orphan*/  subdev; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT9P031_OUTPUT_CONTROL_CEN ; 
 int /*<<< orphan*/  MT9P031_PIXEL_CLOCK_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MT9P031_RST ; 
 int /*<<< orphan*/  MT9P031_RST_DISABLE ; 
 int /*<<< orphan*/  MT9P031_RST_ENABLE ; 
 int FUNC1 (struct mt9p031*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct mt9p031 *mt9p031)
{
	struct i2c_client *client = FUNC3(&mt9p031->subdev);
	int ret;

	/* Disable chip output, synchronous option update */
	ret = FUNC2(client, MT9P031_RST, MT9P031_RST_ENABLE);
	if (ret < 0)
		return ret;
	ret = FUNC2(client, MT9P031_RST, MT9P031_RST_DISABLE);
	if (ret < 0)
		return ret;

	ret = FUNC2(client, MT9P031_PIXEL_CLOCK_CONTROL,
			    FUNC0(mt9p031->clk_div));
	if (ret < 0)
		return ret;

	return FUNC1(mt9p031, MT9P031_OUTPUT_CONTROL_CEN,
					  0);
}