#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  rx_filter; int /*<<< orphan*/  tx_type; scalar_t__ flags; } ;
struct efx_ptp_data {int rx_ts_inline; int nic_ts_enabled; int /*<<< orphan*/  start; void* workwq; scalar_t__ phc_clock; void* pps_workwq; int /*<<< orphan*/  pps_work; int /*<<< orphan*/  phc_clock_info; int /*<<< orphan*/  evt_free_list; TYPE_2__* rx_evts; int /*<<< orphan*/  evt_lock; int /*<<< orphan*/  evt_list; TYPE_1__ config; int /*<<< orphan*/  work; int /*<<< orphan*/  xmit_skb; int /*<<< orphan*/  txq; int /*<<< orphan*/  rxq; struct efx_channel* channel; struct efx_nic* efx; } ;
struct efx_nic {struct efx_ptp_data* ptp_data; TYPE_4__* pci_dev; TYPE_3__* mcdi; } ;
struct efx_channel {int /*<<< orphan*/  sync_events_state; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int fn_flags; } ;
struct TYPE_6__ {int /*<<< orphan*/  link; } ;

/* Variables and functions */
 scalar_t__ EFX_REV_HUNT_A0 ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HWTSTAMP_FILTER_NONE ; 
 int /*<<< orphan*/  HWTSTAMP_TX_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 unsigned int MAX_RECEIVE_EVENTS ; 
 int MC_CMD_DRV_ATTACH_EXT_OUT_FLAG_PRIMARY ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  SYNC_EVENTS_QUIESCENT ; 
 void* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int FUNC6 (struct efx_nic*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct efx_nic*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct efx_nic*) ; 
 int /*<<< orphan*/  efx_phc_clock_info ; 
 int FUNC9 (struct efx_nic*) ; 
 int FUNC10 (struct efx_nic*) ; 
 int /*<<< orphan*/  efx_ptp_pps_worker ; 
 scalar_t__ FUNC11 (struct efx_nic*) ; 
 int /*<<< orphan*/  efx_ptp_worker ; 
 int /*<<< orphan*/  efx_ptp_xmit_skb_mc ; 
 int /*<<< orphan*/  efx_ptp_xmit_skb_queue ; 
 int /*<<< orphan*/  FUNC12 (struct efx_ptp_data*) ; 
 struct efx_ptp_data* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

int FUNC19(struct efx_nic *efx, struct efx_channel *channel)
{
	struct efx_ptp_data *ptp;
	int rc = 0;
	unsigned int pos;

	ptp = FUNC13(sizeof(struct efx_ptp_data), GFP_KERNEL);
	efx->ptp_data = ptp;
	if (!efx->ptp_data)
		return -ENOMEM;

	ptp->efx = efx;
	ptp->channel = channel;
	ptp->rx_ts_inline = FUNC8(efx) >= EFX_REV_HUNT_A0;

	rc = FUNC6(efx, &ptp->start, sizeof(int), GFP_KERNEL);
	if (rc != 0)
		goto fail1;

	FUNC17(&ptp->rxq);
	FUNC17(&ptp->txq);
	ptp->workwq = FUNC4("sfc_ptp");
	if (!ptp->workwq) {
		rc = -ENOMEM;
		goto fail2;
	}

	if (FUNC11(efx)) {
		ptp->xmit_skb = efx_ptp_xmit_skb_queue;
		/* Request sync events on this channel. */
		channel->sync_events_state = SYNC_EVENTS_QUIESCENT;
	} else {
		ptp->xmit_skb = efx_ptp_xmit_skb_mc;
	}

	FUNC1(&ptp->work, efx_ptp_worker);
	ptp->config.flags = 0;
	ptp->config.tx_type = HWTSTAMP_TX_OFF;
	ptp->config.rx_filter = HWTSTAMP_FILTER_NONE;
	FUNC0(&ptp->evt_list);
	FUNC0(&ptp->evt_free_list);
	FUNC18(&ptp->evt_lock);
	for (pos = 0; pos < MAX_RECEIVE_EVENTS; pos++)
		FUNC14(&ptp->rx_evts[pos].link, &ptp->evt_free_list);

	/* Get the NIC PTP attributes and set up time conversions */
	rc = FUNC9(efx);
	if (rc < 0)
		goto fail3;

	/* Get the timestamp corrections */
	rc = FUNC10(efx);
	if (rc < 0)
		goto fail3;

	if (efx->mcdi->fn_flags &
	    (1 << MC_CMD_DRV_ATTACH_EXT_OUT_FLAG_PRIMARY)) {
		ptp->phc_clock_info = efx_phc_clock_info;
		ptp->phc_clock = FUNC15(&ptp->phc_clock_info,
						    &efx->pci_dev->dev);
		if (FUNC2(ptp->phc_clock)) {
			rc = FUNC3(ptp->phc_clock);
			goto fail3;
		} else if (ptp->phc_clock) {
			FUNC1(&ptp->pps_work, efx_ptp_pps_worker);
			ptp->pps_workwq = FUNC4("sfc_pps");
			if (!ptp->pps_workwq) {
				rc = -ENOMEM;
				goto fail4;
			}
		}
	}
	ptp->nic_ts_enabled = false;

	return 0;
fail4:
	FUNC16(efx->ptp_data->phc_clock);

fail3:
	FUNC5(efx->ptp_data->workwq);

fail2:
	FUNC7(efx, &ptp->start);

fail1:
	FUNC12(efx->ptp_data);
	efx->ptp_data = NULL;

	return rc;
}