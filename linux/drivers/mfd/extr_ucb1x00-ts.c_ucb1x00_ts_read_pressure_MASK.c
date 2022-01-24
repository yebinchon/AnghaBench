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
struct ucb1x00_ts {int /*<<< orphan*/  adcsync; int /*<<< orphan*/  ucb; } ;

/* Variables and functions */
 int /*<<< orphan*/  COLLIE_TC35143_GPIO_TBL_CHK ; 
 int /*<<< orphan*/  UCB_ADC_INP_AD2 ; 
 int /*<<< orphan*/  UCB_ADC_INP_TSPY ; 
 int /*<<< orphan*/  UCB_TS_CR ; 
 int UCB_TS_CR_BIAS_ENA ; 
 int UCB_TS_CR_MODE_POS ; 
 int UCB_TS_CR_MODE_PRES ; 
 int UCB_TS_CR_TSMX_POW ; 
 int UCB_TS_CR_TSMY_GND ; 
 int UCB_TS_CR_TSPX_POW ; 
 int UCB_TS_CR_TSPY_GND ; 
 scalar_t__ FUNC0 () ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static inline unsigned int FUNC5(struct ucb1x00_ts *ts)
{
	if (FUNC0()) {
		FUNC2(ts->ucb, COLLIE_TC35143_GPIO_TBL_CHK, 0);
		FUNC3(ts->ucb, UCB_TS_CR,
				  UCB_TS_CR_TSPX_POW | UCB_TS_CR_TSMX_POW |
				  UCB_TS_CR_MODE_POS | UCB_TS_CR_BIAS_ENA);

		FUNC4(55);

		return FUNC1(ts->ucb, UCB_ADC_INP_AD2, ts->adcsync);
	} else {
		FUNC3(ts->ucb, UCB_TS_CR,
				  UCB_TS_CR_TSMX_POW | UCB_TS_CR_TSPX_POW |
				  UCB_TS_CR_TSMY_GND | UCB_TS_CR_TSPY_GND |
				  UCB_TS_CR_MODE_PRES | UCB_TS_CR_BIAS_ENA);

		return FUNC1(ts->ucb, UCB_ADC_INP_TSPY, ts->adcsync);
	}
}