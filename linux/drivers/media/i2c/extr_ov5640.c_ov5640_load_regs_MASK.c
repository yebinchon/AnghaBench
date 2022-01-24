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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct reg_value {int delay_ms; scalar_t__ mask; scalar_t__ val; int /*<<< orphan*/  reg_addr; } ;
struct ov5640_mode_info {unsigned int reg_data_size; struct reg_value* reg_data; } ;
struct ov5640_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ov5640_dev*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int FUNC1 (struct ov5640_dev*,struct ov5640_mode_info const*) ; 
 int FUNC2 (struct ov5640_dev*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct ov5640_dev *sensor,
			    const struct ov5640_mode_info *mode)
{
	const struct reg_value *regs = mode->reg_data;
	unsigned int i;
	u32 delay_ms;
	u16 reg_addr;
	u8 mask, val;
	int ret = 0;

	for (i = 0; i < mode->reg_data_size; ++i, ++regs) {
		delay_ms = regs->delay_ms;
		reg_addr = regs->reg_addr;
		val = regs->val;
		mask = regs->mask;

		if (mask)
			ret = FUNC0(sensor, reg_addr, mask, val);
		else
			ret = FUNC2(sensor, reg_addr, val);
		if (ret)
			break;

		if (delay_ms)
			FUNC3(1000 * delay_ms, 1000 * delay_ms + 100);
	}

	return FUNC1(sensor, mode);
}