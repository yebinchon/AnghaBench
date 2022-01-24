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
struct qed_rdma_start_in_params {int dummy; } ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  QED_MSG_RDMA ; 
 int FUNC2 (struct qed_hwfn*,struct qed_rdma_start_in_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*,struct qed_rdma_start_in_params*) ; 
 int /*<<< orphan*/  FUNC4 (struct qed_hwfn*,struct qed_rdma_start_in_params*) ; 
 int FUNC5 (struct qed_hwfn*,struct qed_ptt*) ; 
 int /*<<< orphan*/  FUNC6 (struct qed_hwfn*) ; 
 int FUNC7 (struct qed_hwfn*) ; 
 int FUNC8 (struct qed_hwfn*,struct qed_rdma_start_in_params*,struct qed_ptt*) ; 
 int FUNC9 (struct qed_hwfn*) ; 

__attribute__((used)) static int FUNC10(struct qed_hwfn *p_hwfn,
			  struct qed_ptt *p_ptt,
			  struct qed_rdma_start_in_params *params)
{
	int rc;

	FUNC0(p_hwfn, QED_MSG_RDMA, "RDMA setup\n");

	FUNC3(p_hwfn, params);
	FUNC6(p_hwfn);
	FUNC4(p_hwfn, params);

	rc = FUNC7(p_hwfn);
	if (rc)
		return rc;

	rc = FUNC5(p_hwfn, p_ptt);
	if (rc)
		return rc;

	if (FUNC1(p_hwfn)) {
		rc = FUNC2(p_hwfn, params);
		if (rc)
			return rc;
	} else {
		rc = FUNC9(p_hwfn);
		if (rc)
			return rc;
	}

	return FUNC8(p_hwfn, params, p_ptt);
}