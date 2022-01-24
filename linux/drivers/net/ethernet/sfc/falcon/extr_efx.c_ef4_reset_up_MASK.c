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
struct ef4_nic {int port_initialized; int /*<<< orphan*/  mac_lock; int /*<<< orphan*/  filter_sem; int /*<<< orphan*/  net_dev; TYPE_2__* phy_op; TYPE_1__* type; } ;
typedef  enum reset_type { ____Placeholder_reset_type } reset_type ;
struct TYPE_4__ {int (* init ) (struct ef4_nic*) ;int (* reconfigure ) (struct ef4_nic*) ;} ;
struct TYPE_3__ {int (* init ) (struct ef4_nic*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ef4_nic*) ; 
 int EPERM ; 
 int RESET_TYPE_DATAPATH ; 
 int RESET_TYPE_INVISIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  drv ; 
 int FUNC2 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC3 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC4 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (struct ef4_nic*) ; 
 int FUNC8 (struct ef4_nic*) ; 
 int FUNC9 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct ef4_nic *efx, enum reset_type method, bool ok)
{
	int rc;

	FUNC0(efx);

	/* Ensure that SRAM is initialised even if we're disabling the device */
	rc = efx->type->init(efx);
	if (rc) {
		FUNC6(efx, drv, efx->net_dev, "failed to initialise NIC\n");
		goto fail;
	}

	if (!ok)
		goto fail;

	if (efx->port_initialized && method != RESET_TYPE_INVISIBLE &&
	    method != RESET_TYPE_DATAPATH) {
		rc = efx->phy_op->init(efx);
		if (rc)
			goto fail;
		rc = efx->phy_op->reconfigure(efx);
		if (rc && rc != -EPERM)
			FUNC6(efx, drv, efx->net_dev,
				  "could not restore PHY settings\n");
	}

	rc = FUNC2(efx);
	if (rc)
		goto fail;

	FUNC1(&efx->filter_sem);
	FUNC3(efx);
	FUNC10(&efx->filter_sem);

	FUNC5(&efx->mac_lock);

	FUNC4(efx);

	return 0;

fail:
	efx->port_initialized = false;

	FUNC5(&efx->mac_lock);

	return rc;
}