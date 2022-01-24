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
struct efx_nic {int port_initialized; int /*<<< orphan*/  mac_lock; TYPE_1__* phy_op; int /*<<< orphan*/  net_dev; } ;
struct TYPE_2__ {int (* init ) (struct efx_nic*) ;int (* reconfigure ) (struct efx_nic*) ;int /*<<< orphan*/  (* fini ) (struct efx_nic*) ;} ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC0 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct efx_nic*) ; 
 int FUNC5 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC6 (struct efx_nic*) ; 

__attribute__((used)) static int FUNC7(struct efx_nic *efx)
{
	int rc;

	FUNC3(efx, drv, efx->net_dev, "init port\n");

	FUNC1(&efx->mac_lock);

	rc = efx->phy_op->init(efx);
	if (rc)
		goto fail1;

	efx->port_initialized = true;

	/* Reconfigure the MAC before creating dma queues (required for
	 * Falcon/A1 where RX_INGR_EN/TX_DRAIN_EN isn't supported) */
	FUNC0(efx);

	/* Ensure the PHY advertises the correct flow control settings */
	rc = efx->phy_op->reconfigure(efx);
	if (rc && rc != -EPERM)
		goto fail2;

	FUNC2(&efx->mac_lock);
	return 0;

fail2:
	efx->phy_op->fini(efx);
fail1:
	FUNC2(&efx->mac_lock);
	return rc;
}