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
typedef  void* u8 ;
typedef  scalar_t__ u16 ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm_tid_data {scalar_t__ rate_n_flags; scalar_t__ tx_time; void* lq_color; } ;
struct iwl_mvm_sta {struct iwl_mvm_tid_data* tid_data; } ;
struct iwl_mvm_compressed_ba_tfd {int tid; int /*<<< orphan*/  tfd_index; int /*<<< orphan*/  q_num; } ;
struct iwl_mvm_compressed_ba_notif {int sta_id; int /*<<< orphan*/  done; int /*<<< orphan*/  txed; int /*<<< orphan*/  flags; int /*<<< orphan*/  wireless_time; int /*<<< orphan*/  tx_rate; struct iwl_mvm_compressed_ba_tfd* tfd; int /*<<< orphan*/  tfd_cnt; scalar_t__ reduced_txp; int /*<<< orphan*/  tlc_rate_info; } ;
struct iwl_mvm_ba_notif {int sta_id; int tid; scalar_t__ reduced_txp; void* txed_2_done; void* txed; int /*<<< orphan*/  bitmap; int /*<<< orphan*/  seq_ctl; int /*<<< orphan*/  sta_addr; int /*<<< orphan*/  scd_ssn; int /*<<< orphan*/  scd_flow; } ;
struct iwl_mvm {int dummy; } ;
struct TYPE_2__ {void** status_driver_data; scalar_t__ tx_time; void* ampdu_len; void* ampdu_ack_len; } ;
struct ieee80211_tx_info {TYPE_1__ status; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_TX_STAT_AMPDU ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int,...) ; 
 int IWL_MAX_TID_COUNT ; 
 int IWL_MGMT_TID ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct iwl_mvm*) ; 
 struct iwl_mvm_sta* FUNC4 (struct iwl_mvm*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_mvm*,struct iwl_mvm_sta*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_mvm*,int,int,int,int,struct ieee80211_tx_info*,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 struct iwl_rx_packet* FUNC12 (struct iwl_rx_cmd_buffer*) ; 

void FUNC13(struct iwl_mvm *mvm, struct iwl_rx_cmd_buffer *rxb)
{
	struct iwl_rx_packet *pkt = FUNC12(rxb);
	int sta_id, tid, txq, index;
	struct ieee80211_tx_info ba_info = {};
	struct iwl_mvm_ba_notif *ba_notif;
	struct iwl_mvm_tid_data *tid_data;
	struct iwl_mvm_sta *mvmsta;

	ba_info.flags = IEEE80211_TX_STAT_AMPDU;

	if (FUNC3(mvm)) {
		struct iwl_mvm_compressed_ba_notif *ba_res =
			(void *)pkt->data;
		u8 lq_color = FUNC1(ba_res->tlc_rate_info);
		int i;

		sta_id = ba_res->sta_id;
		ba_info.status.ampdu_ack_len = (u8)FUNC7(ba_res->done);
		ba_info.status.ampdu_len = (u8)FUNC7(ba_res->txed);
		ba_info.status.tx_time =
			(u16)FUNC8(ba_res->wireless_time);
		ba_info.status.status_driver_data[0] =
			(void *)(uintptr_t)ba_res->reduced_txp;

		if (!FUNC7(ba_res->tfd_cnt))
			goto out;

		FUNC10();

		mvmsta = FUNC4(mvm, sta_id);
		if (!mvmsta)
			goto out_unlock;

		/* Free per TID */
		for (i = 0; i < FUNC7(ba_res->tfd_cnt); i++) {
			struct iwl_mvm_compressed_ba_tfd *ba_tfd =
				&ba_res->tfd[i];

			tid = ba_tfd->tid;
			if (tid == IWL_MGMT_TID)
				tid = IWL_MAX_TID_COUNT;

			mvmsta->tid_data[i].lq_color = lq_color;
			FUNC6(mvm, sta_id, tid,
					   (int)(FUNC7(ba_tfd->q_num)),
					   FUNC7(ba_tfd->tfd_index),
					   &ba_info,
					   FUNC8(ba_res->tx_rate));
		}

		FUNC5(mvm, mvmsta,
				   FUNC8(ba_res->wireless_time));
out_unlock:
		FUNC11();
out:
		FUNC0(mvm,
				   "BA_NOTIFICATION Received from sta_id = %d, flags %x, sent:%d, acked:%d\n",
				   sta_id, FUNC8(ba_res->flags),
				   FUNC7(ba_res->txed),
				   FUNC7(ba_res->done));
		return;
	}

	ba_notif = (void *)pkt->data;
	sta_id = ba_notif->sta_id;
	tid = ba_notif->tid;
	/* "flow" corresponds to Tx queue */
	txq = FUNC7(ba_notif->scd_flow);
	/* "ssn" is start of block-ack Tx window, corresponds to index
	 * (in Tx queue's circular buffer) of first TFD/frame in window */
	index = FUNC7(ba_notif->scd_ssn);

	FUNC10();
	mvmsta = FUNC4(mvm, sta_id);
	if (FUNC2(!mvmsta)) {
		FUNC11();
		return;
	}

	tid_data = &mvmsta->tid_data[tid];

	ba_info.status.ampdu_ack_len = ba_notif->txed_2_done;
	ba_info.status.ampdu_len = ba_notif->txed;
	ba_info.status.tx_time = tid_data->tx_time;
	ba_info.status.status_driver_data[0] =
		(void *)(uintptr_t)ba_notif->reduced_txp;

	FUNC11();

	FUNC6(mvm, sta_id, tid, txq, index, &ba_info,
			   tid_data->rate_n_flags);

	FUNC0(mvm,
			   "BA_NOTIFICATION Received from %pM, sta_id = %d\n",
			   ba_notif->sta_addr, ba_notif->sta_id);

	FUNC0(mvm,
			   "TID = %d, SeqCtl = %d, bitmap = 0x%llx, scd_flow = %d, scd_ssn = %d sent:%d, acked:%d\n",
			   ba_notif->tid, FUNC7(ba_notif->seq_ctl),
			   FUNC9(ba_notif->bitmap), txq, index,
			   ba_notif->txed, ba_notif->txed_2_done);

	FUNC0(mvm, "reduced txp from ba notif %d\n",
			   ba_notif->reduced_txp);
}