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
struct mt9m111 {int /*<<< orphan*/  gain; int /*<<< orphan*/  subdev; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int MT9M111_RESET_ANALOG_STANDBY ; 
 int /*<<< orphan*/  MT9M111_RESET_CHIP_ENABLE ; 
 int MT9M111_RESET_OUTPUT_DISABLE ; 
 int MT9M111_RESET_RESET_MODE ; 
 int MT9M111_RESET_RESET_SOC ; 
 int /*<<< orphan*/  RESET ; 
 int /*<<< orphan*/  FUNC0 (struct mt9m111*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct mt9m111 *mt9m111)
{
	struct i2c_client *client = FUNC4(&mt9m111->subdev);
	int ret;

	FUNC3(mt9m111->gain, FUNC0(mt9m111));

	ret = FUNC2(RESET, MT9M111_RESET_RESET_MODE);
	if (!ret)
		ret = FUNC2(RESET, MT9M111_RESET_RESET_SOC |
			      MT9M111_RESET_OUTPUT_DISABLE |
			      MT9M111_RESET_ANALOG_STANDBY);
	if (!ret)
		ret = FUNC1(RESET, MT9M111_RESET_CHIP_ENABLE);

	return ret;
}