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
struct qed_rdma_qp {int /*<<< orphan*/  icid; } ;
struct qed_hwfn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  QED_MSG_RDMA ; 
 int /*<<< orphan*/  FUNC2 (struct qed_rdma_qp*) ; 
 int FUNC3 (struct qed_hwfn*,struct qed_rdma_qp*) ; 
 int FUNC4 (struct qed_hwfn*,struct qed_rdma_qp*) ; 

__attribute__((used)) static int FUNC5(void *rdma_cxt, struct qed_rdma_qp *qp)
{
	struct qed_hwfn *p_hwfn = (struct qed_hwfn *)rdma_cxt;
	int rc = 0;

	FUNC0(p_hwfn, QED_MSG_RDMA, "icid = %08x\n", qp->icid);

	if (FUNC1(p_hwfn))
		rc = FUNC3(p_hwfn, qp);
	else
		rc = FUNC4(p_hwfn, qp);

	/* free qp params struct */
	FUNC2(qp);

	FUNC0(p_hwfn, QED_MSG_RDMA, "QP destroyed\n");
	return rc;
}