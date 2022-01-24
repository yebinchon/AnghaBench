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
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int /*<<< orphan*/  rdma_prs_search_reg; scalar_t__ b_rdma_enabled_in_prs; TYPE_1__* p_rdma_info; int /*<<< orphan*/  cdev; } ;
struct TYPE_2__ {scalar_t__ active; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NIG_REG_RX_LLH_BRB_GATE_DNTFWD_PERPF ; 
 struct qed_ptt* FUNC1 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*,struct qed_ptt*) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ,int) ; 

int FUNC4(struct qed_hwfn *p_hwfn)
{
	struct qed_ptt *p_ptt;

	if (FUNC0(p_hwfn->cdev))
		return 0;

	p_ptt = FUNC1(p_hwfn);
	if (!p_ptt)
		return -EAGAIN;

	if (p_hwfn->p_rdma_info &&
	    p_hwfn->p_rdma_info->active && p_hwfn->b_rdma_enabled_in_prs)
		FUNC3(p_hwfn, p_ptt, p_hwfn->rdma_prs_search_reg, 0x1);

	/* Re-open incoming traffic */
	FUNC3(p_hwfn, p_ptt, NIG_REG_RX_LLH_BRB_GATE_DNTFWD_PERPF, 0x0);
	FUNC2(p_hwfn, p_ptt);

	return 0;
}