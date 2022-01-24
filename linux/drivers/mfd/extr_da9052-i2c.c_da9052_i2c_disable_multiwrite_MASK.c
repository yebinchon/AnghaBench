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
struct da9052 {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA9052_CONTROL_B_REG ; 
 int DA9052_CONTROL_B_WRITEMODE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct da9052 *da9052)
{
	int reg_val, ret;

	ret = FUNC0(da9052->regmap, DA9052_CONTROL_B_REG, &reg_val);
	if (ret < 0)
		return ret;

	if (!(reg_val & DA9052_CONTROL_B_WRITEMODE)) {
		reg_val |= DA9052_CONTROL_B_WRITEMODE;
		ret = FUNC1(da9052->regmap, DA9052_CONTROL_B_REG,
				   reg_val);
		if (ret < 0)
			return ret;
	}

	return 0;
}