#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct aq_nic_s {int /*<<< orphan*/  ndev; int /*<<< orphan*/  power_state; } ;
struct TYPE_3__ {int event; } ;
typedef  TYPE_1__ pm_message_t ;

/* Variables and functions */
 int /*<<< orphan*/  AQ_HW_POWER_STATE_D3 ; 
 int PM_EVENT_FREEZE ; 
 int PM_EVENT_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (struct aq_nic_s*) ; 
 int FUNC1 (struct aq_nic_s*) ; 
 int FUNC2 (struct aq_nic_s*) ; 
 int FUNC3 (struct aq_nic_s*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

int FUNC11(struct aq_nic_s *self, pm_message_t *pm_msg)
{
	int err = 0;

	if (!FUNC6(self->ndev)) {
		err = 0;
		goto out;
	}
	FUNC9();
	if (pm_msg->event & PM_EVENT_SLEEP || pm_msg->event & PM_EVENT_FREEZE) {
		self->power_state = AQ_HW_POWER_STATE_D3;
		FUNC5(self->ndev);
		FUNC8(self->ndev);

		err = FUNC3(self);
		if (err < 0)
			goto err_exit;

		FUNC0(self);
	} else {
		err = FUNC1(self);
		if (err < 0)
			goto err_exit;

		err = FUNC2(self);
		if (err < 0)
			goto err_exit;

		FUNC4(self->ndev);
		FUNC7(self->ndev);
	}

err_exit:
	FUNC10();
out:
	return err;
}