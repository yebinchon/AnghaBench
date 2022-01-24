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
struct efx_nic {TYPE_1__* mcdi; struct efx_nic* primary; int /*<<< orphan*/  net_dev; } ;
struct efx_mcdi_iface {char* logging_buffer; int new_epoch; int /*<<< orphan*/  async_timer; int /*<<< orphan*/  async_list; int /*<<< orphan*/  async_lock; int /*<<< orphan*/  mode; int /*<<< orphan*/  state; int /*<<< orphan*/  iface_lock; int /*<<< orphan*/  proxy_rx_wq; int /*<<< orphan*/  wq; int /*<<< orphan*/  logging_enabled; struct efx_nic* efx; } ;
struct TYPE_3__ {int fn_flags; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MCDI_MODE_POLL ; 
 int /*<<< orphan*/  MCDI_STATE_QUIESCENT ; 
 int MC_CMD_DRV_ATTACH_EXT_OUT_FLAG_PRIMARY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct efx_mcdi_iface* FUNC2 (struct efx_nic*) ; 
 int FUNC3 (struct efx_nic*,int,int*) ; 
 int FUNC4 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_nic*) ; 
 int /*<<< orphan*/  efx_mcdi_timeout_async ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 TYPE_1__* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mcdi_logging_default ; 
 int /*<<< orphan*/  FUNC10 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  probe ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC13(struct efx_nic *efx)
{
	struct efx_mcdi_iface *mcdi;
	bool already_attached;
	int rc = -ENOMEM;

	efx->mcdi = FUNC9(sizeof(*efx->mcdi), GFP_KERNEL);
	if (!efx->mcdi)
		goto fail;

	mcdi = FUNC2(efx);
	mcdi->efx = efx;
#ifdef CONFIG_SFC_MCDI_LOGGING
	/* consuming code assumes buffer is page-sized */
	mcdi->logging_buffer = (char *)__get_free_page(GFP_KERNEL);
	if (!mcdi->logging_buffer)
		goto fail1;
	mcdi->logging_enabled = mcdi_logging_default;
#endif
	FUNC7(&mcdi->wq);
	FUNC7(&mcdi->proxy_rx_wq);
	FUNC11(&mcdi->iface_lock);
	mcdi->state = MCDI_STATE_QUIESCENT;
	mcdi->mode = MCDI_MODE_POLL;
	FUNC11(&mcdi->async_lock);
	FUNC0(&mcdi->async_list);
	FUNC12(&mcdi->async_timer, efx_mcdi_timeout_async, 0);

	(void) FUNC5(efx);
	mcdi->new_epoch = true;

	/* Recover from a failed assertion before probing */
	rc = FUNC4(efx);
	if (rc)
		goto fail2;

	/* Let the MC (and BMC, if this is a LOM) know that the driver
	 * is loaded. We should do this before we reset the NIC.
	 */
	rc = FUNC3(efx, true, &already_attached);
	if (rc) {
		FUNC10(efx, probe, efx->net_dev,
			  "Unable to register driver with MCPU\n");
		goto fail2;
	}
	if (already_attached)
		/* Not a fatal error */
		FUNC10(efx, probe, efx->net_dev,
			  "Host already registered with MCPU\n");

	if (efx->mcdi->fn_flags &
	    (1 << MC_CMD_DRV_ATTACH_EXT_OUT_FLAG_PRIMARY))
		efx->primary = efx;

	return 0;
fail2:
#ifdef CONFIG_SFC_MCDI_LOGGING
	free_page((unsigned long)mcdi->logging_buffer);
fail1:
#endif
	FUNC8(efx->mcdi);
	efx->mcdi = NULL;
fail:
	return rc;
}