#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct lm3646_flash {unsigned int mode_reg; int /*<<< orphan*/  regmap; TYPE_1__* pdata; } ;
struct TYPE_2__ {int /*<<< orphan*/  led1_torch_brt; int /*<<< orphan*/  led1_flash_brt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_ENABLE ; 
 int /*<<< orphan*/  REG_FLAG ; 
 int /*<<< orphan*/  REG_LED1_FLASH_BR ; 
 int /*<<< orphan*/  REG_LED1_TORCH_BR ; 
 int /*<<< orphan*/  V4L2_FLASH_LED_MODE_NONE ; 
 int FUNC2 (struct lm3646_flash*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct lm3646_flash *flash)
{
	unsigned int reg_val;
	int rval;

	/* read the value of mode register to reduce redundant i2c accesses */
	rval = FUNC3(flash->regmap, REG_ENABLE, &reg_val);
	if (rval < 0)
		return rval;
	flash->mode_reg = reg_val & 0xfc;

	/* output disable */
	rval = FUNC2(flash, V4L2_FLASH_LED_MODE_NONE);
	if (rval < 0)
		return rval;

	/*
	 * LED1 flash current setting
	 * LED2 flash current = Total(Max) flash current - LED1 flash current
	 */
	rval = FUNC4(flash->regmap,
				  REG_LED1_FLASH_BR, 0x7F,
				  FUNC0
				  (flash->pdata->led1_flash_brt));

	if (rval < 0)
		return rval;

	/*
	 * LED1 torch current setting
	 * LED2 torch current = Total(Max) torch current - LED1 torch current
	 */
	rval = FUNC4(flash->regmap,
				  REG_LED1_TORCH_BR, 0x7F,
				  FUNC1
				  (flash->pdata->led1_torch_brt));
	if (rval < 0)
		return rval;

	/* Reset flag register */
	return FUNC3(flash->regmap, REG_FLAG, &reg_val);
}