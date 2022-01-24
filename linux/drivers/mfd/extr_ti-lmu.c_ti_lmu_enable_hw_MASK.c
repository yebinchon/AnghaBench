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
struct ti_lmu {int /*<<< orphan*/  regmap; scalar_t__ en_gpio; } ;
typedef  enum ti_lmu_id { ____Placeholder_ti_lmu_id } ti_lmu_id ;

/* Variables and functions */
 int LM3631 ; 
 int /*<<< orphan*/  LM3631_LCD_EN_MASK ; 
 int /*<<< orphan*/  LM3631_REG_DEVCTRL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(struct ti_lmu *lmu, enum ti_lmu_id id)
{
	if (lmu->en_gpio)
		FUNC0(lmu->en_gpio, 1);

	/* Delay about 1ms after HW enable pin control */
	FUNC2(1000, 1500);

	/* LM3631 has additional power up sequence - enable LCD_EN bit. */
	if (id == LM3631) {
		return FUNC1(lmu->regmap, LM3631_REG_DEVCTRL,
					  LM3631_LCD_EN_MASK,
					  LM3631_LCD_EN_MASK);
	}

	return 0;
}