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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  chip; } ;
struct adapter {TYPE_1__ params; } ;

/* Variables and functions */
 int CIM_F ; 
 int CPL_SWITCH_F ; 
 int EDC0_F ; 
 int EDC1_F ; 
 int GLBL_INTR_MASK ; 
 int LE_F ; 
 int MA_F ; 
 int MC1_F ; 
 int MC_F ; 
 int /*<<< orphan*/  MEM_EDC0 ; 
 int /*<<< orphan*/  MEM_EDC1 ; 
 int /*<<< orphan*/  MEM_MC ; 
 int /*<<< orphan*/  MEM_MC1 ; 
 int MPS_F ; 
 int NCSI_F ; 
 int PCIE_F ; 
 int PL_F ; 
 int /*<<< orphan*/  PL_INT_CAUSE_A ; 
 int /*<<< orphan*/  PL_INT_ENABLE_A ; 
 int PM_RX_F ; 
 int PM_TX_F ; 
 int SGE_F ; 
 int SMB_F ; 
 int TP_F ; 
 int ULP_RX_F ; 
 int ULP_TX_F ; 
 int XGMAC0_F ; 
 int XGMAC1_F ; 
 int XGMAC_KR0_F ; 
 int XGMAC_KR1_F ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC12 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC13 (struct adapter*) ; 
 int FUNC14 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC17 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC18 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC19 (struct adapter*,int) ; 

int FUNC20(struct adapter *adapter)
{
	/* There are rare cases where a PL_INT_CAUSE bit may end up getting
	 * set when the corresponding PL_INT_ENABLE bit isn't set.  It's
	 * easiest just to mask that case here.
	 */
	u32 raw_cause = FUNC14(adapter, PL_INT_CAUSE_A);
	u32 enable = FUNC14(adapter, PL_INT_ENABLE_A);
	u32 cause = raw_cause & enable;

	if (!(cause & GLBL_INTR_MASK))
		return 0;
	if (cause & CIM_F)
		FUNC0(adapter);
	if (cause & MPS_F)
		FUNC6(adapter);
	if (cause & NCSI_F)
		FUNC7(adapter);
	if (cause & PL_F)
		FUNC9(adapter);
	if (cause & SMB_F)
		FUNC13(adapter);
	if (cause & XGMAC0_F)
		FUNC19(adapter, 0);
	if (cause & XGMAC1_F)
		FUNC19(adapter, 1);
	if (cause & XGMAC_KR0_F)
		FUNC19(adapter, 2);
	if (cause & XGMAC_KR1_F)
		FUNC19(adapter, 3);
	if (cause & PCIE_F)
		FUNC8(adapter);
	if (cause & MC_F)
		FUNC5(adapter, MEM_MC);
	if (FUNC2(adapter->params.chip) && (cause & MC1_F))
		FUNC5(adapter, MEM_MC1);
	if (cause & EDC0_F)
		FUNC5(adapter, MEM_EDC0);
	if (cause & EDC1_F)
		FUNC5(adapter, MEM_EDC1);
	if (cause & LE_F)
		FUNC3(adapter);
	if (cause & TP_F)
		FUNC16(adapter);
	if (cause & MA_F)
		FUNC4(adapter);
	if (cause & PM_TX_F)
		FUNC11(adapter);
	if (cause & PM_RX_F)
		FUNC10(adapter);
	if (cause & ULP_RX_F)
		FUNC17(adapter);
	if (cause & CPL_SWITCH_F)
		FUNC1(adapter);
	if (cause & SGE_F)
		FUNC12(adapter);
	if (cause & ULP_TX_F)
		FUNC18(adapter);

	/* Clear the interrupts just processed for which we are the master. */
	FUNC15(adapter, PL_INT_CAUSE_A, raw_cause & GLBL_INTR_MASK);
	(void)FUNC14(adapter, PL_INT_CAUSE_A); /* flush */
	return 1;
}