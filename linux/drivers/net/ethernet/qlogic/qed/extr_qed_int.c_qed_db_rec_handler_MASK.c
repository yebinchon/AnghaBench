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
typedef  scalar_t__ u32 ;
struct qed_ptt {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  overflow; } ;
struct qed_hwfn {int /*<<< orphan*/  db_bar_no_edpm; TYPE_1__ db_recovery_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  DORQ_REG_PF_OVFL_STICKY ; 
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  QED_OVERFLOW_BIT ; 
 int FUNC1 (struct qed_hwfn*,struct qed_ptt*) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*) ; 
 scalar_t__ FUNC3 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC6(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
	u32 attn_ovfl, cur_ovfl;
	int rc;

	attn_ovfl = FUNC5(QED_OVERFLOW_BIT,
				       &p_hwfn->db_recovery_info.overflow);
	cur_ovfl = FUNC3(p_hwfn, p_ptt, DORQ_REG_PF_OVFL_STICKY);
	if (!cur_ovfl && !attn_ovfl)
		return 0;

	FUNC0(p_hwfn, "PF Overflow sticky: attn %u current %u\n",
		  attn_ovfl, cur_ovfl);

	if (cur_ovfl && !p_hwfn->db_bar_no_edpm) {
		rc = FUNC1(p_hwfn, p_ptt);
		if (rc)
			return rc;
	}

	/* Release overflow sticky indication (stop silently dropping everything) */
	FUNC4(p_hwfn, p_ptt, DORQ_REG_PF_OVFL_STICKY, 0x0);

	/* Repeat all last doorbells (doorbell drop recovery) */
	FUNC2(p_hwfn);

	return 0;
}