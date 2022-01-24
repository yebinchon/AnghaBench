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
typedef  scalar_t__ u8 ;

/* Variables and functions */
 int /*<<< orphan*/  PLL_RAW ; 
 scalar_t__ PRCMU_ARMSS ; 
 scalar_t__ PRCMU_DSI0CLK ; 
 scalar_t__ PRCMU_DSI0ESCCLK ; 
 scalar_t__ PRCMU_DSI1CLK ; 
 scalar_t__ PRCMU_DSI2ESCCLK ; 
 scalar_t__ PRCMU_HDMICLK ; 
 scalar_t__ PRCMU_NUM_REG_CLOCKS ; 
 scalar_t__ PRCMU_PLLDDR ; 
 scalar_t__ PRCMU_PLLDSI ; 
 scalar_t__ PRCMU_PLLSOC0 ; 
 scalar_t__ PRCMU_PLLSOC1 ; 
 scalar_t__ PRCMU_SYSCLK ; 
 scalar_t__ PRCMU_TIMCLK ; 
 int /*<<< orphan*/  PRCM_PLLDDR_FREQ ; 
 int /*<<< orphan*/  PRCM_PLLDSI_FREQ ; 
 int /*<<< orphan*/  PRCM_PLLSOC0_FREQ ; 
 int /*<<< orphan*/  PRCM_PLLSOC1_FREQ ; 
 int ROOT_CLOCK_RATE ; 
 unsigned long FUNC0 () ; 
 int FUNC1 (scalar_t__) ; 
 unsigned long FUNC2 (scalar_t__) ; 
 unsigned long FUNC3 (scalar_t__) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

unsigned long FUNC5(u8 clock)
{
	if (clock < PRCMU_NUM_REG_CLOCKS)
		return FUNC1(clock);
	else if (clock == PRCMU_TIMCLK)
		return ROOT_CLOCK_RATE / 16;
	else if (clock == PRCMU_SYSCLK)
		return ROOT_CLOCK_RATE;
	else if (clock == PRCMU_PLLSOC0)
		return FUNC4(PRCM_PLLSOC0_FREQ, ROOT_CLOCK_RATE, PLL_RAW);
	else if (clock == PRCMU_PLLSOC1)
		return FUNC4(PRCM_PLLSOC1_FREQ, ROOT_CLOCK_RATE, PLL_RAW);
	else if (clock == PRCMU_ARMSS)
		return FUNC0();
	else if (clock == PRCMU_PLLDDR)
		return FUNC4(PRCM_PLLDDR_FREQ, ROOT_CLOCK_RATE, PLL_RAW);
	else if (clock == PRCMU_PLLDSI)
		return FUNC4(PRCM_PLLDSI_FREQ, FUNC1(PRCMU_HDMICLK),
			PLL_RAW);
	else if ((clock == PRCMU_DSI0CLK) || (clock == PRCMU_DSI1CLK))
		return FUNC2(clock - PRCMU_DSI0CLK);
	else if ((PRCMU_DSI0ESCCLK <= clock) && (clock <= PRCMU_DSI2ESCCLK))
		return FUNC3(clock - PRCMU_DSI0ESCCLK);
	else
		return 0;
}