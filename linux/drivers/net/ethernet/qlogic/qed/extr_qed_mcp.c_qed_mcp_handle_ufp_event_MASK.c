#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct qed_ptt {int dummy; } ;
struct TYPE_4__ {scalar_t__ mode; int /*<<< orphan*/  tc; } ;
struct TYPE_3__ {int /*<<< orphan*/  ooo_tc; } ;
struct qed_hwfn {TYPE_2__ ufp_info; int /*<<< orphan*/  hw_info; TYPE_1__ qm_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  QED_DCBX_OPERATIONAL_MIB ; 
 scalar_t__ QED_UFP_MODE_ETS ; 
 scalar_t__ QED_UFP_MODE_VNIC_BW ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*,struct qed_ptt*) ; 
 int /*<<< orphan*/  FUNC4 (struct qed_hwfn*,struct qed_ptt*) ; 
 int /*<<< orphan*/  FUNC5 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC6 (struct qed_hwfn*) ; 

__attribute__((used)) static int
FUNC7(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
	FUNC3(p_hwfn, p_ptt);

	if (p_hwfn->ufp_info.mode == QED_UFP_MODE_VNIC_BW) {
		p_hwfn->qm_info.ooo_tc = p_hwfn->ufp_info.tc;
		FUNC2(&p_hwfn->hw_info,
					   p_hwfn->ufp_info.tc);

		FUNC4(p_hwfn, p_ptt);
	} else if (p_hwfn->ufp_info.mode == QED_UFP_MODE_ETS) {
		/* Merge UFP TC with the dcbx TC data */
		FUNC1(p_hwfn, p_ptt,
					  QED_DCBX_OPERATIONAL_MIB);
	} else {
		FUNC0(p_hwfn, "Invalid sched type, discard the UFP config\n");
		return -EINVAL;
	}

	/* update storm FW with negotiation results */
	FUNC6(p_hwfn);

	/* update stag pcp value */
	FUNC5(p_hwfn);

	return 0;
}