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
struct TYPE_2__ {int /*<<< orphan*/  entry; } ;
struct qede_dev {TYPE_1__ rdma_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct qede_dev*) ; 
 int /*<<< orphan*/  qedr_dev_list ; 
 int /*<<< orphan*/  qedr_dev_list_lock ; 

int FUNC7(struct qede_dev *edev, bool recovery)
{
	int rc;

	if (!FUNC6(edev))
		return 0;

	/* Cannot start qedr while recovering since it wasn't fully stopped */
	if (recovery)
		return 0;

	rc = FUNC5(edev);
	if (rc)
		return rc;

	FUNC0(&edev->rdma_info.entry);
	FUNC3(&qedr_dev_list_lock);
	FUNC2(&edev->rdma_info.entry, &qedr_dev_list);
	FUNC1(edev);
	FUNC4(&qedr_dev_list_lock);

	return rc;
}