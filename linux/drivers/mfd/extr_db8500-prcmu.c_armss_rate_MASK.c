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

/* Variables and functions */
 int /*<<< orphan*/  PLL_DIV ; 
 int /*<<< orphan*/  PLL_FIX ; 
 int /*<<< orphan*/  PRCM_ARMCLKFIX_MGT ; 
 int /*<<< orphan*/  PRCM_ARM_CHGCLKREQ ; 
 int PRCM_ARM_CHGCLKREQ_PRCM_ARM_CHGCLKREQ ; 
 int PRCM_ARM_CHGCLKREQ_PRCM_ARM_DIVSEL ; 
 int PRCM_CLK_MGT_CLKPLLDIV_MASK ; 
 int /*<<< orphan*/  PRCM_PLLARM_FREQ ; 
 int /*<<< orphan*/  PRCM_PLLDDR_FREQ ; 
 int /*<<< orphan*/  ROOT_CLOCK_RATE ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC2(void)
{
	u32 r;
	unsigned long rate;

	r = FUNC1(PRCM_ARM_CHGCLKREQ);

	if (r & PRCM_ARM_CHGCLKREQ_PRCM_ARM_CHGCLKREQ) {
		/* External ARMCLKFIX clock */

		rate = FUNC0(PRCM_PLLDDR_FREQ, ROOT_CLOCK_RATE, PLL_FIX);

		/* Check PRCM_ARM_CHGCLKREQ divider */
		if (!(r & PRCM_ARM_CHGCLKREQ_PRCM_ARM_DIVSEL))
			rate /= 2;

		/* Check PRCM_ARMCLKFIX_MGT divider */
		r = FUNC1(PRCM_ARMCLKFIX_MGT);
		r &= PRCM_CLK_MGT_CLKPLLDIV_MASK;
		rate /= r;

	} else {/* ARM PLL */
		rate = FUNC0(PRCM_PLLARM_FREQ, ROOT_CLOCK_RATE, PLL_DIV);
	}

	return rate;
}