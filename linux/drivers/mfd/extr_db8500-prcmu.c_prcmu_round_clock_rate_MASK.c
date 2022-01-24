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
 scalar_t__ PRCMU_ARMSS ; 
 scalar_t__ PRCMU_DSI0CLK ; 
 scalar_t__ PRCMU_DSI0ESCCLK ; 
 scalar_t__ PRCMU_DSI1CLK ; 
 scalar_t__ PRCMU_DSI2ESCCLK ; 
 scalar_t__ PRCMU_NUM_REG_CLOCKS ; 
 scalar_t__ PRCMU_PLLDSI ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 long FUNC1 (unsigned long) ; 
 long FUNC2 (scalar_t__,unsigned long) ; 
 long FUNC3 (unsigned long) ; 
 long FUNC4 (unsigned long) ; 
 long FUNC5 (unsigned long) ; 

long FUNC6(u8 clock, unsigned long rate)
{
	if (clock < PRCMU_NUM_REG_CLOCKS)
		return FUNC2(clock, rate);
	else if (clock == PRCMU_ARMSS)
		return FUNC1(rate);
	else if (clock == PRCMU_PLLDSI)
		return FUNC5(rate);
	else if ((clock == PRCMU_DSI0CLK) || (clock == PRCMU_DSI1CLK))
		return FUNC3(rate);
	else if ((PRCMU_DSI0ESCCLK <= clock) && (clock <= PRCMU_DSI2ESCCLK))
		return FUNC4(rate);
	else
		return (long)FUNC0(clock);
}