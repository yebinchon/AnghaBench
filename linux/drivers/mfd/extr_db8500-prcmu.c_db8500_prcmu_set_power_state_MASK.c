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
typedef  scalar_t__ u8 ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MB0H_POWER_STATE_TRANS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PRCMU_AP_DEEP_IDLE ; 
 scalar_t__ PRCMU_AP_SLEEP ; 
 int /*<<< orphan*/  PRCM_MBOX_CPU_SET ; 
 int /*<<< orphan*/  PRCM_MBOX_CPU_VAL ; 
 scalar_t__ PRCM_MBOX_HEADER_REQ_MB0 ; 
 scalar_t__ PRCM_REQ_MB0_AP_PLL_STATE ; 
 scalar_t__ PRCM_REQ_MB0_AP_POWER_STATE ; 
 scalar_t__ PRCM_REQ_MB0_DO_NOT_WFI ; 
 scalar_t__ PRCM_REQ_MB0_ULP_CLOCK_STATE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__ mb0_transfer ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ tcdm_base ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

int FUNC8(u8 state, bool keep_ulp_clk, bool keep_ap_pll)
{
	unsigned long flags;

	FUNC0((state < PRCMU_AP_SLEEP) || (PRCMU_AP_DEEP_IDLE < state));

	FUNC4(&mb0_transfer.lock, flags);

	while (FUNC3(PRCM_MBOX_CPU_VAL) & FUNC1(0))
		FUNC2();

	FUNC6(MB0H_POWER_STATE_TRANS, (tcdm_base + PRCM_MBOX_HEADER_REQ_MB0));
	FUNC6(state, (tcdm_base + PRCM_REQ_MB0_AP_POWER_STATE));
	FUNC6((keep_ap_pll ? 1 : 0), (tcdm_base + PRCM_REQ_MB0_AP_PLL_STATE));
	FUNC6((keep_ulp_clk ? 1 : 0),
		(tcdm_base + PRCM_REQ_MB0_ULP_CLOCK_STATE));
	FUNC6(0, (tcdm_base + PRCM_REQ_MB0_DO_NOT_WFI));
	FUNC7(FUNC1(0), PRCM_MBOX_CPU_SET);

	FUNC5(&mb0_transfer.lock, flags);

	return 0;
}