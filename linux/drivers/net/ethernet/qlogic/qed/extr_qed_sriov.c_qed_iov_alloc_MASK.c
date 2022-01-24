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
struct qed_pf_iov {int dummy; } ;
struct qed_hwfn {struct qed_pf_iov* pf_iov_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,int /*<<< orphan*/ ,char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  PROTOCOLID_COMMON ; 
 int /*<<< orphan*/  QED_MSG_IOV ; 
 struct qed_pf_iov* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC4 (struct qed_hwfn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qed_sriov_eqe_event ; 

int FUNC5(struct qed_hwfn *p_hwfn)
{
	struct qed_pf_iov *p_sriov;

	if (!FUNC1(p_hwfn)) {
		FUNC0(p_hwfn, QED_MSG_IOV,
			   "No SR-IOV - no need for IOV db\n");
		return 0;
	}

	p_sriov = FUNC2(sizeof(*p_sriov), GFP_KERNEL);
	if (!p_sriov)
		return -ENOMEM;

	p_hwfn->pf_iov_info = p_sriov;

	FUNC4(p_hwfn, PROTOCOLID_COMMON,
				  qed_sriov_eqe_event);

	return FUNC3(p_hwfn);
}