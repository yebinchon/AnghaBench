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
typedef  int u32 ;
struct ti_tscadc_dev {int adc_waiting; int adc_in_use; int /*<<< orphan*/  regmap; int /*<<< orphan*/  reg_se_wait; int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int CHARGE_STEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_ADCFSM ; 
 int SEQ_STATUS ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static void FUNC8(struct ti_tscadc_dev *tscadc)
{
	FUNC0(wait);
	u32 reg;

	FUNC4(tscadc->regmap, REG_ADCFSM, &reg);
	if (reg & SEQ_STATUS) {
		tscadc->adc_waiting = true;
		FUNC3(&tscadc->reg_se_wait, &wait,
				TASK_UNINTERRUPTIBLE);
		FUNC7(&tscadc->reg_lock);

		FUNC5();

		FUNC6(&tscadc->reg_lock);
		FUNC2(&tscadc->reg_se_wait, &wait);

		/*
		 * Sequencer should either be idle or
		 * busy applying the charge step.
		 */
		FUNC4(tscadc->regmap, REG_ADCFSM, &reg);
		FUNC1((reg & SEQ_STATUS) && !(reg & CHARGE_STEP));
		tscadc->adc_waiting = false;
	}
	tscadc->adc_in_use = true;
}