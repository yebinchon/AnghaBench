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
 int /*<<< orphan*/  MT9M111_OPMODE_AUTOWHITEBAL_EN ; 
 int /*<<< orphan*/  OPER_MODE_CTRL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct mt9m111 *mt9m111, int on)
{
	struct i2c_client *client = FUNC2(&mt9m111->subdev);

	if (on)
		return FUNC1(OPER_MODE_CTRL, MT9M111_OPMODE_AUTOWHITEBAL_EN);
	return FUNC0(OPER_MODE_CTRL, MT9M111_OPMODE_AUTOWHITEBAL_EN);
}