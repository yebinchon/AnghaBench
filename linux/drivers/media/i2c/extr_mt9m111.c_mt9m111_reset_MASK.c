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
struct mt9m111 {int /*<<< orphan*/  subdev; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int MT9M111_RESET_RESET_MODE ; 
 int MT9M111_RESET_RESET_SOC ; 
 int /*<<< orphan*/  RESET ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct i2c_client* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct mt9m111 *mt9m111)
{
	struct i2c_client *client = FUNC2(&mt9m111->subdev);
	int ret;

	ret = FUNC1(RESET, MT9M111_RESET_RESET_MODE);
	if (!ret)
		ret = FUNC1(RESET, MT9M111_RESET_RESET_SOC);
	if (!ret)
		ret = FUNC0(RESET, MT9M111_RESET_RESET_MODE
				| MT9M111_RESET_RESET_SOC);

	return ret;
}