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
struct mt9p031 {int output_control; int /*<<< orphan*/  subdev; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT9P031_OUTPUT_CONTROL ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct i2c_client* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct mt9p031 *mt9p031, u16 clear,
				      u16 set)
{
	struct i2c_client *client = FUNC1(&mt9p031->subdev);
	u16 value = (mt9p031->output_control & ~clear) | set;
	int ret;

	ret = FUNC0(client, MT9P031_OUTPUT_CONTROL, value);
	if (ret < 0)
		return ret;

	mt9p031->output_control = value;
	return 0;
}