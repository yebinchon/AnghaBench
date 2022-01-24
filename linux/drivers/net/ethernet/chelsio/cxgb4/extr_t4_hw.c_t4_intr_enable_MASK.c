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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CHELSIO_T5 ; 
 int DBFIFO_HP_INT_F ; 
 int DBFIFO_LP_INT_F ; 
 int EGRESS_SIZE_ERR_F ; 
 int ERR_BAD_DB_PIDX0_F ; 
 int ERR_BAD_DB_PIDX1_F ; 
 int ERR_BAD_DB_PIDX2_F ; 
 int ERR_BAD_DB_PIDX3_F ; 
 int ERR_CPL_EXCEED_IQE_SIZE_F ; 
 int ERR_CPL_OPCODE_0_F ; 
 int ERR_DATA_CPL_ON_HIGH_QID0_F ; 
 int ERR_DATA_CPL_ON_HIGH_QID1_F ; 
 int ERR_DROPPED_DB_F ; 
 int ERR_EGR_CTXT_PRIO_F ; 
 int ERR_ING_CTXT_PRIO_F ; 
 int ERR_INVALID_CIDX_INC_F ; 
 int INGRESS_SIZE_ERR_F ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int PF_INTR_MASK ; 
 int /*<<< orphan*/  PL_INT_MAP0_A ; 
 int /*<<< orphan*/  PL_PF_INT_ENABLE_A ; 
 int /*<<< orphan*/  PL_WHOAMI_A ; 
 int /*<<< orphan*/  SGE_INT_ENABLE3_A ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int /*<<< orphan*/ ,int) ; 

void FUNC7(struct adapter *adapter)
{
	u32 val = 0;
	u32 whoami = FUNC4(adapter, PL_WHOAMI_A);
	u32 pf = FUNC0(adapter->params.chip) <= CHELSIO_T5 ?
			FUNC2(whoami) : FUNC3(whoami);

	if (FUNC0(adapter->params.chip) <= CHELSIO_T5)
		val = ERR_DROPPED_DB_F | ERR_EGR_CTXT_PRIO_F | DBFIFO_HP_INT_F;
	FUNC6(adapter, SGE_INT_ENABLE3_A, ERR_CPL_EXCEED_IQE_SIZE_F |
		     ERR_INVALID_CIDX_INC_F | ERR_CPL_OPCODE_0_F |
		     ERR_DATA_CPL_ON_HIGH_QID1_F | INGRESS_SIZE_ERR_F |
		     ERR_DATA_CPL_ON_HIGH_QID0_F | ERR_BAD_DB_PIDX3_F |
		     ERR_BAD_DB_PIDX2_F | ERR_BAD_DB_PIDX1_F |
		     ERR_BAD_DB_PIDX0_F | ERR_ING_CTXT_PRIO_F |
		     DBFIFO_LP_INT_F | EGRESS_SIZE_ERR_F | val);
	FUNC6(adapter, FUNC1(PL_PF_INT_ENABLE_A), PF_INTR_MASK);
	FUNC5(adapter, PL_INT_MAP0_A, 0, 1 << pf);
}