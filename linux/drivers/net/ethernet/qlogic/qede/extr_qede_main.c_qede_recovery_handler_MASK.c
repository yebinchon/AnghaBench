#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct qede_dev {scalar_t__ state; int /*<<< orphan*/  ndev; int /*<<< orphan*/ * cdev; int /*<<< orphan*/  dp_level; int /*<<< orphan*/  dp_module; int /*<<< orphan*/  pdev; TYPE_2__* ops; } ;
struct TYPE_4__ {TYPE_1__* common; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* recovery_prolog ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qede_dev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qede_dev*) ; 
 int /*<<< orphan*/  QEDE_LOAD_RECOVERY ; 
 int /*<<< orphan*/  QEDE_PROBE_RECOVERY ; 
 int /*<<< orphan*/  QEDE_REMOVE_RECOVERY ; 
 scalar_t__ QEDE_STATE_OPEN ; 
 scalar_t__ QEDE_STATE_RECOVERY ; 
 int /*<<< orphan*/  QEDE_UNLOAD_RECOVERY ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct qede_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct qede_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct qede_dev *edev)
{
	u32 curr_state = edev->state;
	int rc;

	FUNC0(edev, "Starting a recovery process\n");

	/* No need to acquire first the qede_lock since is done by qede_sp_task
	 * before calling this function.
	 */
	edev->state = QEDE_STATE_RECOVERY;

	edev->ops->common->recovery_prolog(edev->cdev);

	if (curr_state == QEDE_STATE_OPEN)
		FUNC7(edev, QEDE_UNLOAD_RECOVERY, true);

	FUNC3(edev->pdev, QEDE_REMOVE_RECOVERY);

	rc = FUNC2(edev->pdev, edev->dp_module, edev->dp_level,
			  FUNC1(edev), QEDE_PROBE_RECOVERY);
	if (rc) {
		edev->cdev = NULL;
		goto err;
	}

	if (curr_state == QEDE_STATE_OPEN) {
		rc = FUNC5(edev, QEDE_LOAD_RECOVERY, true);
		if (rc)
			goto err;

		FUNC4(edev->ndev);
		FUNC9(edev->ndev);
	}

	edev->state = curr_state;

	FUNC0(edev, "Recovery handling is done\n");

	return;

err:
	FUNC6(edev);
}