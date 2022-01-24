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
struct TYPE_2__ {int exp_recovery; int /*<<< orphan*/  entry; int /*<<< orphan*/ * qedr_dev; } ;
struct qede_dev {TYPE_1__ rdma_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct qede_dev*) ; 
 int /*<<< orphan*/  qedr_dev_list_lock ; 

void FUNC6(struct qede_dev *edev, bool recovery)
{
	if (!FUNC5(edev))
		return;

	/* Cannot remove qedr while recovering since it wasn't fully stopped */
	if (!recovery) {
		FUNC4(edev);
		FUNC2(&qedr_dev_list_lock);
		if (!edev->rdma_info.exp_recovery)
			FUNC0(edev);
		edev->rdma_info.qedr_dev = NULL;
		FUNC1(&edev->rdma_info.entry);
		FUNC3(&qedr_dev_list_lock);
	} else {
		if (!edev->rdma_info.exp_recovery) {
			FUNC2(&qedr_dev_list_lock);
			FUNC0(edev);
			FUNC3(&qedr_dev_list_lock);
		}
		edev->rdma_info.exp_recovery = true;
	}
}