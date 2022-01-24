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
struct efx_nic {scalar_t__ state; int /*<<< orphan*/  reset_work; TYPE_1__* type; int /*<<< orphan*/  mac_lock; TYPE_2__* phy_op; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* reconfigure ) (struct efx_nic*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  (* resume_wol ) (struct efx_nic*) ;} ;

/* Variables and functions */
 scalar_t__ STATE_DISABLED ; 
 scalar_t__ STATE_READY ; 
 struct efx_nic* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*) ; 
 int FUNC2 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  reset_workqueue ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC10 (struct efx_nic*) ; 

__attribute__((used)) static int FUNC11(struct device *dev)
{
	int rc;
	struct efx_nic *efx = FUNC0(dev);

	FUNC7();

	if (efx->state != STATE_DISABLED) {
		rc = FUNC2(efx);
		if (rc)
			goto fail;

		FUNC4(&efx->mac_lock);
		efx->phy_op->reconfigure(efx);
		FUNC5(&efx->mac_lock);

		FUNC3(efx);

		FUNC1(efx);

		efx->state = STATE_READY;

		efx->type->resume_wol(efx);
	}

	FUNC8();

	/* Reschedule any quenched resets scheduled during efx_pm_freeze() */
	FUNC6(reset_workqueue, &efx->reset_work);

	return 0;

fail:
	FUNC8();

	return rc;
}