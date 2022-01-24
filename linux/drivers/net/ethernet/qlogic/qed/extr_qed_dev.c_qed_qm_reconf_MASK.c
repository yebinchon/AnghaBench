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
struct qed_qm_info {int /*<<< orphan*/  num_pqs; int /*<<< orphan*/  start_pq; } ;
struct qed_ptt {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  hw_mode; } ;
struct qed_hwfn {TYPE_1__ hw_info; int /*<<< orphan*/  rel_pf_id; struct qed_qm_info qm_info; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PHASE_QM_PF ; 
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*) ; 
 int FUNC2 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*,struct qed_ptt*,int) ; 
 int FUNC4 (struct qed_hwfn*,struct qed_ptt*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qm_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
	struct qed_qm_info *qm_info = &p_hwfn->qm_info;
	bool b_rc;
	int rc;

	/* initialize qed's qm data structure */
	FUNC1(p_hwfn);

	/* stop PF's qm queues */
	FUNC5(&qm_lock);
	b_rc = FUNC4(p_hwfn, p_ptt, false, true,
				    qm_info->start_pq, qm_info->num_pqs);
	FUNC6(&qm_lock);
	if (!b_rc)
		return -EINVAL;

	/* clear the QM_PF runtime phase leftovers from previous init */
	FUNC0(p_hwfn);

	/* prepare QM portion of runtime array */
	FUNC3(p_hwfn, p_ptt, false);

	/* activate init tool on runtime array */
	rc = FUNC2(p_hwfn, p_ptt, PHASE_QM_PF, p_hwfn->rel_pf_id,
			  p_hwfn->hw_info.hw_mode);
	if (rc)
		return rc;

	/* start PF's qm queues */
	FUNC5(&qm_lock);
	b_rc = FUNC4(p_hwfn, p_ptt, true, true,
				    qm_info->start_pq, qm_info->num_pqs);
	FUNC6(&qm_lock);
	if (!b_rc)
		return -EINVAL;

	return 0;
}