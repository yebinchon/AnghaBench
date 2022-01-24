#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_10__ {int n_bd; size_t read_ptr; int /*<<< orphan*/  write_ptr; } ;
struct il_tx_queue {TYPE_5__ q; int /*<<< orphan*/ * skbs; int /*<<< orphan*/  time_stamp; } ;
struct TYPE_7__ {int /*<<< orphan*/ * raw; } ;
struct TYPE_6__ {int /*<<< orphan*/  sequence; } ;
struct il_rx_pkt {TYPE_2__ u; TYPE_1__ hdr; } ;
struct il_rx_buf {int dummy; } ;
struct il_priv {scalar_t__ iw_mode; struct il_tx_queue* txq; } ;
struct il3945_tx_resp {int failure_frame; int /*<<< orphan*/  rate; int /*<<< orphan*/  status; } ;
struct TYPE_9__ {TYPE_3__* rates; } ;
struct ieee80211_tx_info {scalar_t__ band; int /*<<< orphan*/  flags; TYPE_4__ status; } ;
struct TYPE_8__ {int idx; int count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 struct ieee80211_tx_info* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IEEE80211_TX_STAT_ACK ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ IL_FIRST_OFDM_RATE ; 
 int /*<<< orphan*/  IL_STOP_REASON_PASSIVE ; 
 scalar_t__ NL80211_BAND_5GHZ ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int TX_ABORT_REQUIRED_MSK ; 
 int TX_STATUS_FAIL_PASSIVE_NO_RX ; 
 int TX_STATUS_MSK ; 
 int TX_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_tx_info*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct il_priv*,int,int) ; 
 scalar_t__ FUNC11 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct il_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 struct il_rx_pkt* FUNC15 (struct il_rx_buf*) ; 
 scalar_t__ FUNC16 (int) ; 

__attribute__((used)) static void
FUNC17(struct il_priv *il, struct il_rx_buf *rxb)
{
	struct il_rx_pkt *pkt = FUNC15(rxb);
	u16 sequence = FUNC13(pkt->hdr.sequence);
	int txq_id = FUNC6(sequence);
	int idx = FUNC5(sequence);
	struct il_tx_queue *txq = &il->txq[txq_id];
	struct ieee80211_tx_info *info;
	struct il3945_tx_resp *tx_resp = (void *)&pkt->u.raw[0];
	u32 status = FUNC14(tx_resp->status);
	int rate_idx;
	int fail;

	if (idx >= txq->q.n_bd || FUNC11(&txq->q, idx) == 0) {
		FUNC4("Read idx for DMA queue txq_id (%d) idx %d "
		       "is out of range [0-%d] %d %d\n", txq_id, idx,
		       txq->q.n_bd, txq->q.write_ptr, txq->q.read_ptr);
		return;
	}

	/*
	 * Firmware will not transmit frame on passive channel, if it not yet
	 * received some valid frame on that channel. When this error happen
	 * we have to wait until firmware will unblock itself i.e. when we
	 * note received beacon or other frame. We unblock queues in
	 * il3945_pass_packet_to_mac80211 or in il_mac_bss_info_changed.
	 */
	if (FUNC16((status & TX_STATUS_MSK) == TX_STATUS_FAIL_PASSIVE_NO_RX) &&
	    il->iw_mode == NL80211_IFTYPE_STATION) {
		FUNC12(il, IL_STOP_REASON_PASSIVE);
		FUNC0("Stopped queues - RX waiting on passive channel\n");
	}

	txq->time_stamp = jiffies;
	info = FUNC3(txq->skbs[txq->q.read_ptr]);
	FUNC7(info);

	/* Fill the MRR chain with some info about on-chip retransmissions */
	rate_idx = FUNC9(tx_resp->rate);
	if (info->band == NL80211_BAND_5GHZ)
		rate_idx -= IL_FIRST_OFDM_RATE;

	fail = tx_resp->failure_frame;

	info->status.rates[0].idx = rate_idx;
	info->status.rates[0].count = fail + 1;	/* add final attempt */

	/* tx_status->rts_retry_count = tx_resp->failure_rts; */
	info->flags |=
	    ((status & TX_STATUS_MSK) ==
	     TX_STATUS_SUCCESS) ? IEEE80211_TX_STAT_ACK : 0;

	FUNC1("Tx queue %d Status %s (0x%08x) plcp rate %d retries %d\n", txq_id,
	     FUNC8(status), status, tx_resp->rate,
	     tx_resp->failure_frame);

	FUNC2("Tx queue reclaim %d\n", idx);
	FUNC10(il, txq_id, idx);

	if (status & TX_ABORT_REQUIRED_MSK)
		FUNC4("TODO:  Implement Tx ABORT REQUIRED!!!\n");
}