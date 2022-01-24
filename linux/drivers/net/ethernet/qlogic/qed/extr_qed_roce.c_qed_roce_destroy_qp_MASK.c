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
typedef  int /*<<< orphan*/  u32 ;
struct qed_rdma_qp {scalar_t__ cur_state; } ;
struct qed_hwfn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*) ; 
 int EINVAL ; 
 scalar_t__ QED_ROCE_QP_STATE_ERR ; 
 scalar_t__ QED_ROCE_QP_STATE_INIT ; 
 scalar_t__ QED_ROCE_QP_STATE_RESET ; 
 int FUNC1 (struct qed_hwfn*,struct qed_rdma_qp*) ; 
 int FUNC2 (struct qed_hwfn*,struct qed_rdma_qp*,int /*<<< orphan*/ *) ; 

int FUNC3(struct qed_hwfn *p_hwfn, struct qed_rdma_qp *qp)
{
	u32 cq_prod;
	int rc;

	/* Destroys the specified QP */
	if ((qp->cur_state != QED_ROCE_QP_STATE_RESET) &&
	    (qp->cur_state != QED_ROCE_QP_STATE_ERR) &&
	    (qp->cur_state != QED_ROCE_QP_STATE_INIT)) {
		FUNC0(p_hwfn,
			  "QP must be in error, reset or init state before destroying it\n");
		return -EINVAL;
	}

	if (qp->cur_state != QED_ROCE_QP_STATE_RESET) {
		rc = FUNC2(p_hwfn, qp,
						      &cq_prod);
		if (rc)
			return rc;

		/* Send destroy requester ramrod */
		rc = FUNC1(p_hwfn, qp);
		if (rc)
			return rc;
	}

	return 0;
}