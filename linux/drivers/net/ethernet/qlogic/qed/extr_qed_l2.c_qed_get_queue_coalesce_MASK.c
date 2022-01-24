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
typedef  int /*<<< orphan*/  u16 ;
struct qed_queue_cid {scalar_t__ b_is_rx; } ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*) ; 
 int EAGAIN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct qed_hwfn*,struct qed_ptt*,struct qed_queue_cid*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct qed_hwfn*,struct qed_ptt*,struct qed_queue_cid*,int /*<<< orphan*/ *) ; 
 struct qed_ptt* FUNC4 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC5 (struct qed_hwfn*,struct qed_ptt*) ; 
 int FUNC6 (struct qed_hwfn*,int /*<<< orphan*/ *,struct qed_queue_cid*) ; 

int FUNC7(struct qed_hwfn *p_hwfn, u16 *p_coal, void *handle)
{
	struct qed_queue_cid *p_cid = handle;
	struct qed_ptt *p_ptt;
	int rc = 0;

	if (FUNC1(p_hwfn->cdev)) {
		rc = FUNC6(p_hwfn, p_coal, p_cid);
		if (rc)
			FUNC0(p_hwfn, "Unable to read queue coalescing\n");

		return rc;
	}

	p_ptt = FUNC4(p_hwfn);
	if (!p_ptt)
		return -EAGAIN;

	if (p_cid->b_is_rx) {
		rc = FUNC2(p_hwfn, p_ptt, p_cid, p_coal);
		if (rc)
			goto out;
	} else {
		rc = FUNC3(p_hwfn, p_ptt, p_cid, p_coal);
		if (rc)
			goto out;
	}

out:
	FUNC5(p_hwfn, p_ptt);

	return rc;
}