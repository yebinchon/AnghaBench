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
struct tps65218 {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int TPS65218_PASSWORD_REGS_UNLOCK ; 
#define  TPS65218_PROTECT_L1 129 
#define  TPS65218_PROTECT_NONE 128 
 unsigned int TPS65218_REG_PASSWORD ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

int FUNC1(struct tps65218 *tps, unsigned int reg,
			unsigned int val, unsigned int level)
{
	int ret;
	unsigned int xor_reg_val;

	switch (level) {
	case TPS65218_PROTECT_NONE:
		return FUNC0(tps->regmap, reg, val);
	case TPS65218_PROTECT_L1:
		xor_reg_val = reg ^ TPS65218_PASSWORD_REGS_UNLOCK;
		ret = FUNC0(tps->regmap, TPS65218_REG_PASSWORD,
							xor_reg_val);
		if (ret < 0)
			return ret;

		return FUNC0(tps->regmap, reg, val);
	default:
		return -EINVAL;
	}
}