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
struct ucb1x00 {int adc_cr; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  UCB_ADC_CR ; 
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  UCB_ADC_DATA ; 
 unsigned int UCB_ADC_DAT_VAL ; 
 int UCB_ADC_START ; 
 int UCB_ADC_SYNC_ENA ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct ucb1x00*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ucb1x00*,int /*<<< orphan*/ ,int) ; 

unsigned int FUNC5(struct ucb1x00 *ucb, int adc_channel, int sync)
{
	unsigned int val;

	if (sync)
		adc_channel |= UCB_ADC_SYNC_ENA;

	FUNC4(ucb, UCB_ADC_CR, ucb->adc_cr | adc_channel);
	FUNC4(ucb, UCB_ADC_CR, ucb->adc_cr | adc_channel | UCB_ADC_START);

	for (;;) {
		val = FUNC3(ucb, UCB_ADC_DATA);
		if (val & UCB_ADC_DAT_VAL)
			break;
		/* yield to other processes */
		FUNC2(TASK_INTERRUPTIBLE);
		FUNC1(1);
	}

	return FUNC0(val);
}