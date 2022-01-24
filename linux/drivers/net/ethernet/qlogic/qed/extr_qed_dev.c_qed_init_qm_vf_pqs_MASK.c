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
struct qed_qm_info {scalar_t__ num_vf_pqs; int /*<<< orphan*/  num_pqs; } ;
struct qed_hwfn {struct qed_qm_info qm_info; } ;

/* Variables and functions */
 int PQ_FLAGS_VFS ; 
 int /*<<< orphan*/  PQ_INIT_DEFAULT_TC ; 
 int /*<<< orphan*/  PQ_INIT_VF_RL ; 
 int FUNC0 (struct qed_hwfn*) ; 
 scalar_t__ FUNC1 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*,struct qed_qm_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct qed_hwfn *p_hwfn)
{
	struct qed_qm_info *qm_info = &p_hwfn->qm_info;
	u16 vf_idx, num_vfs = FUNC1(p_hwfn);

	if (!(FUNC0(p_hwfn) & PQ_FLAGS_VFS))
		return;

	FUNC3(p_hwfn, PQ_FLAGS_VFS, qm_info->num_pqs);
	qm_info->num_vf_pqs = num_vfs;
	for (vf_idx = 0; vf_idx < num_vfs; vf_idx++)
		FUNC2(p_hwfn,
			       qm_info, PQ_INIT_DEFAULT_TC, PQ_INIT_VF_RL);
}