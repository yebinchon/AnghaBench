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
typedef  scalar_t__ u8 ;
struct qed_qm_info {int /*<<< orphan*/  num_pqs; } ;
struct qed_hwfn {struct qed_qm_info qm_info; } ;

/* Variables and functions */
 int PQ_FLAGS_MCOS ; 
 int /*<<< orphan*/  PQ_INIT_SHARE_VPORT ; 
 int FUNC0 (struct qed_hwfn*) ; 
 scalar_t__ FUNC1 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*,struct qed_qm_info*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct qed_hwfn *p_hwfn)
{
	struct qed_qm_info *qm_info = &p_hwfn->qm_info;
	u8 tc_idx;

	if (!(FUNC0(p_hwfn) & PQ_FLAGS_MCOS))
		return;

	FUNC3(p_hwfn, PQ_FLAGS_MCOS, qm_info->num_pqs);
	for (tc_idx = 0; tc_idx < FUNC1(p_hwfn); tc_idx++)
		FUNC2(p_hwfn, qm_info, tc_idx, PQ_INIT_SHARE_VPORT);
}