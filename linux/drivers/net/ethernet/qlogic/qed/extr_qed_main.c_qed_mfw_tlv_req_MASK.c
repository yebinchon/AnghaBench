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
struct qed_hwfn {int /*<<< orphan*/  slowpath_task; int /*<<< orphan*/  slowpath_wq; int /*<<< orphan*/  slowpath_task_flags; int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NETIF_MSG_DRV ; 
 int /*<<< orphan*/  QED_SLOWPATH_MFW_TLV_REQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5(struct qed_hwfn *hwfn)
{
	FUNC0(hwfn->cdev, NETIF_MSG_DRV,
		   "Scheduling slowpath task [Flag: %d]\n",
		   QED_SLOWPATH_MFW_TLV_REQ);
	FUNC4();
	FUNC2(QED_SLOWPATH_MFW_TLV_REQ, &hwfn->slowpath_task_flags);
	FUNC3();
	FUNC1(hwfn->slowpath_wq, &hwfn->slowpath_task, 0);

	return 0;
}