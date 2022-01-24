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
typedef  int u16 ;
struct mt9m111 {int /*<<< orphan*/  subdev; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GLOBAL_GAIN ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct i2c_client* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct mt9m111 *mt9m111, int gain)
{
	struct i2c_client *client = FUNC1(&mt9m111->subdev);
	u16 val;

	if (gain > 63 * 2 * 2)
		return -EINVAL;

	if ((gain >= 64 * 2) && (gain < 63 * 2 * 2))
		val = (1 << 10) | (1 << 9) | (gain / 4);
	else if ((gain >= 64) && (gain < 64 * 2))
		val = (1 << 9) | (gain / 2);
	else
		val = gain;

	return FUNC0(GLOBAL_GAIN, val);
}