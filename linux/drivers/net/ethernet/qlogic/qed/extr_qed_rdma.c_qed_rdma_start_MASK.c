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
struct qed_rdma_start_in_params {int desired_cnq; } ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {TYPE_1__* p_rdma_info; } ;
struct TYPE_2__ {int active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,int /*<<< orphan*/ ,char*,int) ; 
 int EBUSY ; 
 int /*<<< orphan*/  QED_MSG_RDMA ; 
 struct qed_ptt* FUNC1 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*,struct qed_ptt*) ; 
 int FUNC3 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC4 (struct qed_hwfn*) ; 
 int FUNC5 (struct qed_hwfn*,struct qed_ptt*,struct qed_rdma_start_in_params*) ; 

__attribute__((used)) static int FUNC6(void *rdma_cxt,
			  struct qed_rdma_start_in_params *params)
{
	struct qed_hwfn *p_hwfn = (struct qed_hwfn *)rdma_cxt;
	struct qed_ptt *p_ptt;
	int rc = -EBUSY;

	FUNC0(p_hwfn, QED_MSG_RDMA,
		   "desired_cnq = %08x\n", params->desired_cnq);

	p_ptt = FUNC1(p_hwfn);
	if (!p_ptt)
		goto err;

	rc = FUNC3(p_hwfn);
	if (rc)
		goto err1;

	rc = FUNC5(p_hwfn, p_ptt, params);
	if (rc)
		goto err2;

	FUNC2(p_hwfn, p_ptt);
	p_hwfn->p_rdma_info->active = 1;

	return rc;

err2:
	FUNC4(p_hwfn);
err1:
	FUNC2(p_hwfn, p_ptt);
err:
	FUNC0(p_hwfn, QED_MSG_RDMA, "RDMA start - error, rc = %d\n", rc);
	return rc;
}