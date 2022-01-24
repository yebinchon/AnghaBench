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
typedef  int /*<<< orphan*/  u_long ;
struct s_smc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct s_smc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  B2_RTM_CRTL ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FDDI_RING_STATUS ; 
 scalar_t__ FDDI_RTT ; 
 scalar_t__ FDDI_SMT_EVENT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FM_CMDREG1 ; 
 int /*<<< orphan*/  FM_ICL ; 
 int /*<<< orphan*/  TIM_CL_IRQ ; 
 int TIM_RES_TOK ; 
 int /*<<< orphan*/  TIM_START ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct s_smc*) ; 

void FUNC7(struct s_smc *smc)
{
	FUNC5(FUNC0(B2_RTM_CRTL),TIM_CL_IRQ) ;		/* clear IRQ */
	if (FUNC4(FUNC0(B2_RTM_CRTL)) & TIM_RES_TOK) {
		FUNC5(FUNC3(FM_CMDREG1),FM_ICL) ;	/* force claim */
		FUNC2("RMT: fddiPATHT_Rmode expired");
		FUNC1(smc, (u_long) FDDI_RING_STATUS,
				(u_long) FDDI_SMT_EVENT,
				(u_long) FDDI_RTT, FUNC6(smc));
	}
	FUNC5(FUNC0(B2_RTM_CRTL),TIM_START) ;	/* enable RTM monitoring */
}