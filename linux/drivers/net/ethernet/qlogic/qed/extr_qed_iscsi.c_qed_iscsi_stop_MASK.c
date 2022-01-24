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
struct qed_dev {int flags; int /*<<< orphan*/  connections; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_dev*,char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct qed_dev*) ; 
 int QED_FLAG_STORAGE_STARTED ; 
 int /*<<< orphan*/  QED_SPQ_MODE_EBLOCK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct qed_dev *cdev)
{
	int rc;

	if (!(cdev->flags & QED_FLAG_STORAGE_STARTED)) {
		FUNC0(cdev, "iscsi already stopped\n");
		return 0;
	}

	if (!FUNC2(cdev->connections)) {
		FUNC0(cdev,
			  "Can't stop iscsi - not all connections were returned\n");
		return -EINVAL;
	}

	/* Stop the iscsi */
	rc = FUNC3(FUNC1(cdev), QED_SPQ_MODE_EBLOCK,
				    NULL);
	cdev->flags &= ~QED_FLAG_STORAGE_STARTED;

	return rc;
}