#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ wdog_used; } ;
struct s_smc {TYPE_1__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  B2_WDOG_CRTL ; 
 int /*<<< orphan*/  FUNC1 (struct s_smc*) ; 
 int /*<<< orphan*/  TIM_STOP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct s_smc *smc)
{
	FUNC1(smc) ;	/* Make LINT happy. */
#ifndef	DEBUG

#ifdef	PCI
	if (smc->hw.wdog_used) {
		outpw(ADDR(B2_WDOG_CRTL),TIM_STOP) ;	/* Stop timer. */
	}
#endif

#endif	/* DEBUG */
}