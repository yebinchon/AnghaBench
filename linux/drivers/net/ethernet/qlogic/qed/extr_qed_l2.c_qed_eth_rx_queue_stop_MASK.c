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
struct qed_queue_cid {int dummy; } ;
struct qed_hwfn {int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct qed_hwfn*,struct qed_queue_cid*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*,struct qed_queue_cid*) ; 
 int FUNC3 (struct qed_hwfn*,struct qed_queue_cid*,int) ; 

int FUNC4(struct qed_hwfn *p_hwfn,
			  void *p_rxq,
			  bool eq_completion_only, bool cqe_completion)
{
	struct qed_queue_cid *p_cid = (struct qed_queue_cid *)p_rxq;
	int rc = -EINVAL;

	if (FUNC0(p_hwfn->cdev))
		rc = FUNC1(p_hwfn, p_cid,
					      eq_completion_only,
					      cqe_completion);
	else
		rc = FUNC3(p_hwfn, p_cid, cqe_completion);

	if (!rc)
		FUNC2(p_hwfn, p_cid);
	return rc;
}