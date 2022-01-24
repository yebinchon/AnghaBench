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
struct ef4_nic {scalar_t__ state; int /*<<< orphan*/  reset_work; TYPE_2__* type; int /*<<< orphan*/  net_dev; int /*<<< orphan*/  mac_lock; TYPE_1__* phy_op; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* resume_wol ) (struct ef4_nic*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  (* reconfigure ) (struct ef4_nic*) ;} ;

/* Variables and functions */
 scalar_t__ STATE_DISABLED ; 
 scalar_t__ STATE_READY ; 
 struct ef4_nic* FUNC0 (struct device*) ; 
 int FUNC1 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC2 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  reset_workqueue ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC10 (struct ef4_nic*) ; 

__attribute__((used)) static int FUNC11(struct device *dev)
{
	int rc;
	struct ef4_nic *efx = FUNC0(dev);

	FUNC7();

	if (efx->state != STATE_DISABLED) {
		rc = FUNC1(efx);
		if (rc)
			goto fail;

		FUNC3(&efx->mac_lock);
		efx->phy_op->reconfigure(efx);
		FUNC4(&efx->mac_lock);

		FUNC2(efx);

		FUNC5(efx->net_dev);

		efx->state = STATE_READY;

		efx->type->resume_wol(efx);
	}

	FUNC8();

	/* Reschedule any quenched resets scheduled during ef4_pm_freeze() */
	FUNC6(reset_workqueue, &efx->reset_work);

	return 0;

fail:
	FUNC8();

	return rc;
}