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
typedef  int /*<<< orphan*/  u8 ;
struct ov2659 {int /*<<< orphan*/  sd; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_PRE_ISP_CTRL00 ; 
 int /*<<< orphan*/  TEST_PATTERN_ENABLE ; 
 int /*<<< orphan*/  VERTICAL_COLOR_BAR_MASK ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct ov2659 *ov2659, int value)
{
	struct i2c_client *client = FUNC2(&ov2659->sd);
	int ret;
	u8 val;

	ret = FUNC0(client, REG_PRE_ISP_CTRL00, &val);
	if (ret < 0)
		return ret;

	switch (value) {
	case 0:
		val &= ~TEST_PATTERN_ENABLE;
		break;
	case 1:
		val &= VERTICAL_COLOR_BAR_MASK;
		val |= TEST_PATTERN_ENABLE;
		break;
	}

	return FUNC1(client, REG_PRE_ISP_CTRL00, val);
}