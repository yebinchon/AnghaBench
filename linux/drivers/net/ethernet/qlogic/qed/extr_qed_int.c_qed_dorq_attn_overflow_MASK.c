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
typedef  int /*<<< orphan*/  u32 ;
struct qed_ptt {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  overflow; } ;
struct qed_hwfn {int /*<<< orphan*/  db_bar_no_edpm; TYPE_1__ db_recovery_info; struct qed_ptt* p_dpc_ptt; } ;

/* Variables and functions */
 int /*<<< orphan*/  DORQ_REG_PF_OVFL_STICKY ; 
 int /*<<< orphan*/  QED_OVERFLOW_BIT ; 
 int FUNC0 (struct qed_hwfn*,struct qed_ptt*) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct qed_hwfn *p_hwfn)
{
	struct qed_ptt *p_ptt = p_hwfn->p_dpc_ptt;
	u32 overflow;
	int rc;

	overflow = FUNC2(p_hwfn, p_ptt, DORQ_REG_PF_OVFL_STICKY);
	if (!overflow)
		goto out;

	/* Run PF doorbell recovery in next periodic handler */
	FUNC4(QED_OVERFLOW_BIT, &p_hwfn->db_recovery_info.overflow);

	if (!p_hwfn->db_bar_no_edpm) {
		rc = FUNC0(p_hwfn, p_ptt);
		if (rc)
			goto out;
	}

	FUNC3(p_hwfn, p_ptt, DORQ_REG_PF_OVFL_STICKY, 0x0);
out:
	/* Schedule the handler even if overflow was not detected */
	FUNC1(p_hwfn);
}