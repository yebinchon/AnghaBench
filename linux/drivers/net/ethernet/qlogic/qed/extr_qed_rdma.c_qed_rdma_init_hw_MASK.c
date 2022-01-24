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
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int b_rdma_enabled_in_prs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  QED_MSG_RDMA ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*,struct qed_ptt*) ; 
 int FUNC3 (struct qed_hwfn*,struct qed_ptt*) ; 

__attribute__((used)) static int FUNC4(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
	int rc = 0;

	FUNC0(p_hwfn, QED_MSG_RDMA, "Initializing HW\n");
	p_hwfn->b_rdma_enabled_in_prs = false;

	if (FUNC1(p_hwfn))
		FUNC2(p_hwfn, p_ptt);
	else
		rc = FUNC3(p_hwfn, p_ptt);

	return rc;
}