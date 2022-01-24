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
 int EINVAL ; 
 scalar_t__ PRCMU_DSI0CLK ; 
 scalar_t__ PRCMU_DSI0ESCCLK ; 
 scalar_t__ PRCMU_DSI1CLK ; 
 scalar_t__ PRCMU_DSI2ESCCLK ; 
 scalar_t__ PRCMU_NUM_REG_CLOCKS ; 
 scalar_t__ PRCMU_PLLDSI ; 
 scalar_t__ PRCMU_PLLSOC0 ; 
 scalar_t__ PRCMU_PLLSOC1 ; 
 scalar_t__ PRCMU_SGACLK ; 
 scalar_t__ PRCMU_SYSCLK ; 
 scalar_t__ PRCMU_TIMCLK ; 
 int FUNC0 (scalar_t__,int) ; 
 int FUNC1 (scalar_t__,int) ; 
 int FUNC2 (scalar_t__,int) ; 
 int FUNC3 (scalar_t__,int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (scalar_t__,int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 

int FUNC8(u8 clock, bool enable)
{
	if (clock == PRCMU_SGACLK)
		return FUNC5(clock, enable);
	else if (clock < PRCMU_NUM_REG_CLOCKS)
		return FUNC0(clock, enable);
	else if (clock == PRCMU_TIMCLK)
		return FUNC7(enable);
	else if ((clock == PRCMU_DSI0CLK) || (clock == PRCMU_DSI1CLK))
		return FUNC1((clock - PRCMU_DSI0CLK), enable);
	else if ((PRCMU_DSI0ESCCLK <= clock) && (clock <= PRCMU_DSI2ESCCLK))
		return FUNC2((clock - PRCMU_DSI0ESCCLK), enable);
	else if (clock == PRCMU_PLLDSI)
		return FUNC4(enable);
	else if (clock == PRCMU_SYSCLK)
		return FUNC6(enable);
	else if ((clock == PRCMU_PLLSOC0) || (clock == PRCMU_PLLSOC1))
		return FUNC3(clock, enable);
	else
		return -EINVAL;
}