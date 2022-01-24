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
struct efx_nic {int port_initialized; int /*<<< orphan*/  mac_lock; int /*<<< orphan*/  filter_sem; int /*<<< orphan*/  rss_lock; TYPE_2__* type; int /*<<< orphan*/  net_dev; TYPE_1__* phy_op; } ;
typedef  enum reset_type { ____Placeholder_reset_type } reset_type ;
struct TYPE_4__ {int (* init ) (struct efx_nic*) ;int (* vswitching_restore ) (struct efx_nic*) ;int /*<<< orphan*/  (* udp_tnl_push_ports ) (struct efx_nic*) ;int /*<<< orphan*/  (* sriov_reset ) (struct efx_nic*) ;int /*<<< orphan*/  (* filter_table_restore ) (struct efx_nic*) ;int /*<<< orphan*/  (* rx_restore_rss_contexts ) (struct efx_nic*) ;int /*<<< orphan*/  (* finish_flr ) (struct efx_nic*) ;} ;
struct TYPE_3__ {int (* init ) (struct efx_nic*) ;int (* reconfigure ) (struct efx_nic*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct efx_nic*) ; 
 int EPERM ; 
 int RESET_TYPE_DATAPATH ; 
 int RESET_TYPE_INVISIBLE ; 
 int RESET_TYPE_MCDI_TIMEOUT ; 
 int /*<<< orphan*/  drv ; 
 int FUNC1 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  probe ; 
 int /*<<< orphan*/  FUNC6 (struct efx_nic*) ; 
 int FUNC7 (struct efx_nic*) ; 
 int FUNC8 (struct efx_nic*) ; 
 int FUNC9 (struct efx_nic*) ; 
 int FUNC10 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC11 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC12 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC13 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC14 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

int FUNC16(struct efx_nic *efx, enum reset_type method, bool ok)
{
	int rc;

	FUNC0(efx);

	if (method == RESET_TYPE_MCDI_TIMEOUT)
		efx->type->finish_flr(efx);

	/* Ensure that SRAM is initialised even if we're disabling the device */
	rc = efx->type->init(efx);
	if (rc) {
		FUNC4(efx, drv, efx->net_dev, "failed to initialise NIC\n");
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
			FUNC4(efx, drv, efx->net_dev,
				  "could not restore PHY settings\n");
	}

	rc = FUNC1(efx);
	if (rc)
		goto fail;

#ifdef CONFIG_SFC_SRIOV
	rc = efx->type->vswitching_restore(efx);
	if (rc) /* not fatal; the PF will still work fine */
		netif_warn(efx, probe, efx->net_dev,
			   "failed to restore vswitching rc=%d;"
			   " VFs may not function\n", rc);
#endif

	if (efx->type->rx_restore_rss_contexts)
		efx->type->rx_restore_rss_contexts(efx);
	FUNC3(&efx->rss_lock);
	efx->type->filter_table_restore(efx);
	FUNC15(&efx->filter_sem);
	if (efx->type->sriov_reset)
		efx->type->sriov_reset(efx);

	FUNC3(&efx->mac_lock);

	FUNC2(efx);

	if (efx->type->udp_tnl_push_ports)
		efx->type->udp_tnl_push_ports(efx);

	return 0;

fail:
	efx->port_initialized = false;

	FUNC3(&efx->rss_lock);
	FUNC15(&efx->filter_sem);
	FUNC3(&efx->mac_lock);

	return rc;
}