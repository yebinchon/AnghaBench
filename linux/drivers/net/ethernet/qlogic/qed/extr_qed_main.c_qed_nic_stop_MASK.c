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
struct qed_hwfn {int b_sp_dpc_enabled; int /*<<< orphan*/  sp_dpc; } ;
struct qed_dev {int num_hwfns; struct qed_hwfn* hwfns; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_dev*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NETIF_MSG_IFDOWN ; 
 int /*<<< orphan*/  FUNC1 (struct qed_dev*) ; 
 int FUNC2 (struct qed_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct qed_dev *cdev)
{
	int i, rc;

	rc = FUNC2(cdev);

	for (i = 0; i < cdev->num_hwfns; i++) {
		struct qed_hwfn *p_hwfn = &cdev->hwfns[i];

		if (p_hwfn->b_sp_dpc_enabled) {
			FUNC3(p_hwfn->sp_dpc);
			p_hwfn->b_sp_dpc_enabled = false;
			FUNC0(cdev, NETIF_MSG_IFDOWN,
				   "Disabled sp tasklet [hwfn %d] at %p\n",
				   i, p_hwfn->sp_dpc);
		}
	}

	FUNC1(cdev);

	return rc;
}