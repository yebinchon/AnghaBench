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
struct efx_nic {TYPE_1__* type; } ;
struct efx_mcdi_iface {scalar_t__ mode; int resprc; int new_epoch; int /*<<< orphan*/  iface_lock; int /*<<< orphan*/  credits; scalar_t__ resp_data_len; scalar_t__ resp_hdr_len; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* mcdi_reboot_detected ) (struct efx_nic*) ;} ;

/* Variables and functions */
 scalar_t__ MCDI_MODE_EVENTS ; 
 int MCDI_STATUS_DELAY_COUNT ; 
 int /*<<< orphan*/  MCDI_STATUS_DELAY_US ; 
 int /*<<< orphan*/  RESET_TYPE_MC_FAILURE ; 
 struct efx_mcdi_iface* FUNC0 (struct efx_nic*) ; 
 scalar_t__ FUNC1 (struct efx_mcdi_iface*) ; 
 int FUNC2 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_mcdi_iface*) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_nic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct efx_nic *efx, int rc)
{
	struct efx_mcdi_iface *mcdi = FUNC0(efx);

	/* If there is an outstanding MCDI request, it has been terminated
	 * either by a BADASSERT or REBOOT event. If the mcdi interface is
	 * in polled mode, then do nothing because the MC reboot handler will
	 * set the header correctly. However, if the mcdi interface is waiting
	 * for a CMDDONE event it won't receive it [and since all MCDI events
	 * are sent to the same queue, we can't be racing with
	 * efx_mcdi_ev_cpl()]
	 *
	 * If there is an outstanding asynchronous request, we can't
	 * complete it now (efx_mcdi_complete() would deadlock).  The
	 * reset process will take care of this.
	 *
	 * There's a race here with efx_mcdi_send_request(), because
	 * we might receive a REBOOT event *before* the request has
	 * been copied out. In polled mode (during startup) this is
	 * irrelevant, because efx_mcdi_complete_sync() is ignored. In
	 * event mode, this condition is just an edge-case of
	 * receiving a REBOOT event after posting the MCDI
	 * request. Did the mc reboot before or after the copyout? The
	 * best we can do always is just return failure.
	 *
	 * If there is an outstanding proxy response expected it is not going
	 * to arrive. We should thus abort it.
	 */
	FUNC5(&mcdi->iface_lock);
	FUNC3(mcdi);

	if (FUNC1(mcdi)) {
		if (mcdi->mode == MCDI_MODE_EVENTS) {
			mcdi->resprc = rc;
			mcdi->resp_hdr_len = 0;
			mcdi->resp_data_len = 0;
			++mcdi->credits;
		}
	} else {
		int count;

		/* Consume the status word since efx_mcdi_rpc_finish() won't */
		for (count = 0; count < MCDI_STATUS_DELAY_COUNT; ++count) {
			rc = FUNC2(efx);
			if (rc)
				break;
			FUNC8(MCDI_STATUS_DELAY_US);
		}

		/* On EF10, a CODE_MC_REBOOT event can be received without the
		 * reboot detection in efx_mcdi_poll_reboot() being triggered.
		 * If zero was returned from the final call to
		 * efx_mcdi_poll_reboot(), the MC reboot wasn't noticed but the
		 * MC has definitely rebooted so prepare for the reset.
		 */
		if (!rc && efx->type->mcdi_reboot_detected)
			efx->type->mcdi_reboot_detected(efx);

		mcdi->new_epoch = true;

		/* Nobody was waiting for an MCDI request, so trigger a reset */
		FUNC4(efx, RESET_TYPE_MC_FAILURE);
	}

	FUNC6(&mcdi->iface_lock);
}