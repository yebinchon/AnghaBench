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

/* Variables and functions */
 int /*<<< orphan*/  PRCMU_DSI_PLLOUT_SEL_SETTING ; 
 int /*<<< orphan*/  PRCMU_DSI_RESET_SW ; 
 int /*<<< orphan*/  PRCMU_ENABLE_ESCAPE_CLOCK_DIV ; 
 int /*<<< orphan*/  PRCMU_ENABLE_PLLDSI ; 
 int /*<<< orphan*/  PRCMU_PLLDSI_FREQ_SETTING ; 
 int PRCMU_PLLDSI_LOCKP_LOCKED ; 
 int /*<<< orphan*/  PRCMU_RESET_DSIPLL ; 
 int /*<<< orphan*/  PRCMU_UNCLAMP_DSIPLL ; 
 int /*<<< orphan*/  PRCM_APE_RESETN_CLR ; 
 int /*<<< orphan*/  PRCM_APE_RESETN_SET ; 
 int /*<<< orphan*/  PRCM_DSITVCLK_DIV ; 
 int /*<<< orphan*/  PRCM_DSI_PLLOUT_SEL ; 
 int /*<<< orphan*/  PRCM_DSI_SW_RESET ; 
 int /*<<< orphan*/  PRCM_MMIP_LS_CLAMP_CLR ; 
 int /*<<< orphan*/  PRCM_PLLDSI_ENABLE ; 
 int /*<<< orphan*/  PRCM_PLLDSI_FREQ ; 
 int /*<<< orphan*/  PRCM_PLLDSI_LOCKP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(void)
{
	int i;

	/* Clear DSIPLL_RESETN */
	FUNC2(PRCMU_RESET_DSIPLL, PRCM_APE_RESETN_CLR);
	/* Unclamp DSIPLL in/out */
	FUNC2(PRCMU_UNCLAMP_DSIPLL, PRCM_MMIP_LS_CLAMP_CLR);

	/* Set DSI PLL FREQ */
	FUNC2(PRCMU_PLLDSI_FREQ_SETTING, PRCM_PLLDSI_FREQ);
	FUNC2(PRCMU_DSI_PLLOUT_SEL_SETTING, PRCM_DSI_PLLOUT_SEL);
	/* Enable Escape clocks */
	FUNC2(PRCMU_ENABLE_ESCAPE_CLOCK_DIV, PRCM_DSITVCLK_DIV);

	/* Start DSI PLL */
	FUNC2(PRCMU_ENABLE_PLLDSI, PRCM_PLLDSI_ENABLE);
	/* Reset DSI PLL */
	FUNC2(PRCMU_DSI_RESET_SW, PRCM_DSI_SW_RESET);
	for (i = 0; i < 10; i++) {
		if ((FUNC0(PRCM_PLLDSI_LOCKP) & PRCMU_PLLDSI_LOCKP_LOCKED)
					== PRCMU_PLLDSI_LOCKP_LOCKED)
			break;
		FUNC1(100);
	}
	/* Set DSIPLL_RESETN */
	FUNC2(PRCMU_RESET_DSIPLL, PRCM_APE_RESETN_SET);
	return 0;
}