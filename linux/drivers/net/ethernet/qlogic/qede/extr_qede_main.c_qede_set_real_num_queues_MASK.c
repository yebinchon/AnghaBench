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
struct TYPE_2__ {int num_tc; } ;
struct qede_dev {int /*<<< orphan*/  ndev; TYPE_1__ dev_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qede_dev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qede_dev*) ; 
 int FUNC2 (struct qede_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct qede_dev *edev)
{
	int rc = 0;

	rc = FUNC4(edev->ndev,
					  FUNC2(edev) *
					  edev->dev_info.num_tc);
	if (rc) {
		FUNC0(edev, "Failed to set real number of Tx queues\n");
		return rc;
	}

	rc = FUNC3(edev->ndev, FUNC1(edev));
	if (rc) {
		FUNC0(edev, "Failed to set real number of Rx queues\n");
		return rc;
	}

	return 0;
}