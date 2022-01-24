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
struct qed_qm_info {int /*<<< orphan*/  num_pqs; } ;
struct qed_hwfn {struct qed_qm_info qm_info; } ;

/* Variables and functions */
 int PQ_FLAGS_LB ; 
 int /*<<< orphan*/  PQ_INIT_SHARE_VPORT ; 
 int /*<<< orphan*/  PURE_LB_TC ; 
 int FUNC0 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,struct qed_qm_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct qed_hwfn *p_hwfn)
{
	struct qed_qm_info *qm_info = &p_hwfn->qm_info;

	if (!(FUNC0(p_hwfn) & PQ_FLAGS_LB))
		return;

	FUNC2(p_hwfn, PQ_FLAGS_LB, qm_info->num_pqs);
	FUNC1(p_hwfn, qm_info, PURE_LB_TC, PQ_INIT_SHARE_VPORT);
}