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
 int /*<<< orphan*/  PRCMU_DPI_CLOCK_SETTING ; 
 int /*<<< orphan*/  PRCMU_DSI_CLOCK_SETTING ; 
 int /*<<< orphan*/  PRCMU_DSI_LP_CLOCK_SETTING ; 
 scalar_t__ PRCM_HDMICLK_MGT ; 
 scalar_t__ PRCM_LCDCLK_MGT ; 
 scalar_t__ PRCM_SEM ; 
 int PRCM_SEM_PRCM_SEM ; 
 scalar_t__ PRCM_TVCLK_MGT ; 
 int /*<<< orphan*/  clk_mgt_lock ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ prcmu_base ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC5(void)
{
	unsigned long flags;

	FUNC2(&clk_mgt_lock, flags);

	/* Grab the HW semaphore. */
	while ((FUNC1(PRCM_SEM) & PRCM_SEM_PRCM_SEM) != 0)
		FUNC0();

	FUNC4(PRCMU_DSI_CLOCK_SETTING, prcmu_base + PRCM_HDMICLK_MGT);
	FUNC4(PRCMU_DSI_LP_CLOCK_SETTING, prcmu_base + PRCM_TVCLK_MGT);
	FUNC4(PRCMU_DPI_CLOCK_SETTING, prcmu_base + PRCM_LCDCLK_MGT);

	/* Release the HW semaphore. */
	FUNC4(0, PRCM_SEM);

	FUNC3(&clk_mgt_lock, flags);

	return 0;
}