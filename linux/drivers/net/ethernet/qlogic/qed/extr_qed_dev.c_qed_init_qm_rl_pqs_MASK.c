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
typedef  scalar_t__ u16 ;
struct qed_qm_info {int /*<<< orphan*/  num_pqs; } ;
struct qed_hwfn {struct qed_qm_info qm_info; } ;

/* Variables and functions */
 int PQ_FLAGS_RLS ; 
 int /*<<< orphan*/  PQ_INIT_PF_RL ; 
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*) ; 
 int FUNC1 (struct qed_hwfn*) ; 
 scalar_t__ FUNC2 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*,struct qed_qm_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qed_hwfn*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct qed_hwfn *p_hwfn)
{
	u16 pf_rls_idx, num_pf_rls = FUNC2(p_hwfn);
	struct qed_qm_info *qm_info = &p_hwfn->qm_info;

	if (!(FUNC1(p_hwfn) & PQ_FLAGS_RLS))
		return;

	FUNC4(p_hwfn, PQ_FLAGS_RLS, qm_info->num_pqs);
	for (pf_rls_idx = 0; pf_rls_idx < num_pf_rls; pf_rls_idx++)
		FUNC3(p_hwfn, qm_info, FUNC0(p_hwfn),
			       PQ_INIT_PF_RL);
}