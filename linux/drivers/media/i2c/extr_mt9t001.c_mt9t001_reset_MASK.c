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
struct mt9t001 {int /*<<< orphan*/  output_control; int /*<<< orphan*/  subdev; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT9T001_OUTPUT_CONTROL_CHIP_ENABLE ; 
 int /*<<< orphan*/  MT9T001_OUTPUT_CONTROL_DEF ; 
 int /*<<< orphan*/  MT9T001_RESET ; 
 int FUNC0 (struct mt9t001*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct i2c_client* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct mt9t001 *mt9t001)
{
	struct i2c_client *client = FUNC2(&mt9t001->subdev);
	int ret;

	/* Reset the chip and stop data read out */
	ret = FUNC1(client, MT9T001_RESET, 1);
	if (ret < 0)
		return ret;

	ret = FUNC1(client, MT9T001_RESET, 0);
	if (ret < 0)
		return ret;

	mt9t001->output_control = MT9T001_OUTPUT_CONTROL_DEF;

	return FUNC0(mt9t001,
					  MT9T001_OUTPUT_CONTROL_CHIP_ENABLE,
					  0);
}