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
typedef  int u64 ;
typedef  int u32 ;
typedef  struct intr_info {int member_0; char* member_1; int member_2; int member_3; int /*<<< orphan*/  const member_4; } const intr_info ;
struct TYPE_2__ {int /*<<< orphan*/  chip; } ;
struct adapter {int /*<<< orphan*/  pdev_dev; TYPE_1__ params; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CHELSIO_T5 ; 
#define  DBFIFO_HP_INT_F 145 
#define  DBFIFO_LP_INT_F 144 
#define  EGRESS_SIZE_ERR_F 143 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ERROR_QID_VALID_F ; 
#define  ERR_BAD_DB_PIDX0_F 142 
#define  ERR_BAD_DB_PIDX1_F 141 
#define  ERR_BAD_DB_PIDX2_F 140 
#define  ERR_BAD_DB_PIDX3_F 139 
#define  ERR_CPL_EXCEED_IQE_SIZE_F 138 
#define  ERR_CPL_OPCODE_0_F 137 
#define  ERR_DATA_CPL_ON_HIGH_QID0_F 136 
#define  ERR_DATA_CPL_ON_HIGH_QID1_F 135 
#define  ERR_DROPPED_DB_F 134 
#define  ERR_EGR_CTXT_PRIO_F 133 
#define  ERR_ING_CTXT_PRIO_F 132 
#define  ERR_INVALID_CIDX_INC_F 131 
#define  INGRESS_SIZE_ERR_F 130 
 int /*<<< orphan*/  SGE_ERROR_STATS_A ; 
 int /*<<< orphan*/  SGE_INT_CAUSE1_A ; 
 int /*<<< orphan*/  SGE_INT_CAUSE2_A ; 
 int /*<<< orphan*/  SGE_INT_CAUSE3_A ; 
 int UNCAPTURED_ERROR_F ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
#define  t4_db_dropped 129 
#define  t4_db_full 128 
 int /*<<< orphan*/  FUNC4 (struct adapter*) ; 
 int FUNC5 (struct adapter*,int /*<<< orphan*/ ,struct intr_info const*) ; 
 int FUNC6 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct adapter *adapter)
{
	u64 v;
	u32 err;

	static const struct intr_info sge_intr_info[] = {
		{ ERR_CPL_EXCEED_IQE_SIZE_F,
		  "SGE received CPL exceeding IQE size", -1, 1 },
		{ ERR_INVALID_CIDX_INC_F,
		  "SGE GTS CIDX increment too large", -1, 0 },
		{ ERR_CPL_OPCODE_0_F, "SGE received 0-length CPL", -1, 0 },
		{ DBFIFO_LP_INT_F, NULL, -1, 0, t4_db_full },
		{ ERR_DATA_CPL_ON_HIGH_QID1_F | ERR_DATA_CPL_ON_HIGH_QID0_F,
		  "SGE IQID > 1023 received CPL for FL", -1, 0 },
		{ ERR_BAD_DB_PIDX3_F, "SGE DBP 3 pidx increment too large", -1,
		  0 },
		{ ERR_BAD_DB_PIDX2_F, "SGE DBP 2 pidx increment too large", -1,
		  0 },
		{ ERR_BAD_DB_PIDX1_F, "SGE DBP 1 pidx increment too large", -1,
		  0 },
		{ ERR_BAD_DB_PIDX0_F, "SGE DBP 0 pidx increment too large", -1,
		  0 },
		{ ERR_ING_CTXT_PRIO_F,
		  "SGE too many priority ingress contexts", -1, 0 },
		{ INGRESS_SIZE_ERR_F, "SGE illegal ingress QID", -1, 0 },
		{ EGRESS_SIZE_ERR_F, "SGE illegal egress QID", -1, 0 },
		{ 0 }
	};

	static struct intr_info t4t5_sge_intr_info[] = {
		{ ERR_DROPPED_DB_F, NULL, -1, 0, t4_db_dropped },
		{ DBFIFO_HP_INT_F, NULL, -1, 0, t4_db_full },
		{ ERR_EGR_CTXT_PRIO_F,
		  "SGE too many priority egress contexts", -1, 0 },
		{ 0 }
	};

	v = (u64)FUNC6(adapter, SGE_INT_CAUSE1_A) |
		((u64)FUNC6(adapter, SGE_INT_CAUSE2_A) << 32);
	if (v) {
		FUNC2(adapter->pdev_dev, "SGE parity error (%#llx)\n",
				(unsigned long long)v);
		FUNC7(adapter, SGE_INT_CAUSE1_A, v);
		FUNC7(adapter, SGE_INT_CAUSE2_A, v >> 32);
	}

	v |= FUNC5(adapter, SGE_INT_CAUSE3_A, sge_intr_info);
	if (FUNC0(adapter->params.chip) <= CHELSIO_T5)
		v |= FUNC5(adapter, SGE_INT_CAUSE3_A,
					   t4t5_sge_intr_info);

	err = FUNC6(adapter, SGE_ERROR_STATS_A);
	if (err & ERROR_QID_VALID_F) {
		FUNC3(adapter->pdev_dev, "SGE error for queue %u\n",
			FUNC1(err));
		if (err & UNCAPTURED_ERROR_F)
			FUNC3(adapter->pdev_dev,
				"SGE UNCAPTURED_ERROR set (clearing)\n");
		FUNC7(adapter, SGE_ERROR_STATS_A, ERROR_QID_VALID_F |
			     UNCAPTURED_ERROR_F);
	}

	if (v != 0)
		FUNC4(adapter);
}