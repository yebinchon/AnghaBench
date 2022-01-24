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
struct ti_tscadc_dev {int adc_in_use; int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  reg_se_cache; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_SE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct ti_tscadc_dev *tscadc)
{
	unsigned long flags;

	FUNC1(&tscadc->reg_lock, flags);
	tscadc->adc_in_use = false;
	FUNC0(tscadc->regmap, REG_SE, tscadc->reg_se_cache);
	FUNC2(&tscadc->reg_lock, flags);
}