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
struct qede_dev {scalar_t__ state; int /*<<< orphan*/  sp_task; int /*<<< orphan*/  sp_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qede_dev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qede_dev*,char*) ; 
 int /*<<< orphan*/  QEDE_SP_RECOVERY ; 
 scalar_t__ QEDE_STATE_RECOVERY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void *dev)
{
	struct qede_dev *edev = dev;

	if (edev->state == QEDE_STATE_RECOVERY) {
		FUNC1(edev,
			  "Avoid scheduling a recovery handling since already in recovery state\n");
		return;
	}

	FUNC3(QEDE_SP_RECOVERY, &edev->sp_flags);
	FUNC2(&edev->sp_task, 0);

	FUNC0(edev, "Scheduled a recovery handler\n");
}