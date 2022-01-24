#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  void* u16 ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_4__ {int /*<<< orphan*/  sequence; } ;
struct iwl_rx_packet {scalar_t__ data; TYPE_1__ hdr; } ;
struct iwl_mvm_tx_resp {int /*<<< orphan*/  wireless_media_time; scalar_t__ failure_frame; int /*<<< orphan*/  initial_rate; int /*<<< orphan*/  reduced_tpc; int /*<<< orphan*/  tlc_info; int /*<<< orphan*/  seq_ctl; int /*<<< orphan*/  tx_queue; int /*<<< orphan*/  ra_tid; } ;
struct iwl_mvm_tid_data {void* next_reclaimed; } ;
struct iwl_mvm_sta {scalar_t__ sta_state; int next_status_eosp; scalar_t__ sleep_tx_count; int /*<<< orphan*/  lock; struct iwl_mvm_tid_data* tid_data; int /*<<< orphan*/  tx_ant; } ;
struct iwl_mvm {int /*<<< orphan*/ * fw_id_to_mac_id; int /*<<< orphan*/  hw; int /*<<< orphan*/  mgmt_last_antenna_idx; int /*<<< orphan*/  trans; } ;
struct TYPE_6__ {void** status_driver_data; void* tx_time; TYPE_2__* rates; } ;
struct ieee80211_tx_info {int flags; TYPE_3__ status; int /*<<< orphan*/ * driver_data; } ;
struct ieee80211_sta {scalar_t__ wme; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; int /*<<< orphan*/  seq_ctrl; } ;
struct agg_tx_status {int /*<<< orphan*/  status; } ;
struct TYPE_5__ {scalar_t__ count; } ;

/* Variables and functions */
 int FUNC0 (void**) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  IEEE80211_FRAME_RELEASE_UAPSD ; 
 struct ieee80211_tx_info* FUNC2 (struct sk_buff*) ; 
 scalar_t__ IEEE80211_STA_AUTHORIZED ; 
 int IEEE80211_TX_CTL_AMPDU ; 
 int IEEE80211_TX_STAT_ACK ; 
 int IEEE80211_TX_STAT_AMPDU_NO_BACK ; 
 int IEEE80211_TX_STAT_TX_FILTERED ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_mvm*,char*,...) ; 
 int IWL_MGMT_TID ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int FUNC9 (void*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
#define  TX_STATUS_DIRECT_DONE 132 
#define  TX_STATUS_FAIL_DEST_PS 131 
#define  TX_STATUS_FAIL_DRAIN_FLOW 130 
#define  TX_STATUS_FAIL_FIFO_FLUSHED 129 
 int TX_STATUS_MSK ; 
#define  TX_STATUS_SUCCESS 128 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ FUNC12 (int) ; 
 struct sk_buff* FUNC13 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff_head*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct ieee80211_sta*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC21 (struct iwl_mvm*,struct ieee80211_sta*,int) ; 
 struct agg_tx_status* FUNC22 (struct iwl_mvm*,struct iwl_mvm_tx_resp*) ; 
 void* FUNC23 (struct iwl_mvm*,struct iwl_mvm_tx_resp*) ; 
 int /*<<< orphan*/  FUNC24 (int) ; 
 scalar_t__ FUNC25 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC26 (scalar_t__,struct ieee80211_tx_info*) ; 
 struct iwl_mvm_sta* FUNC27 (struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC28 (struct iwl_mvm*,struct ieee80211_sta*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC29 (struct iwl_mvm*,struct iwl_mvm_tid_data*) ; 
 int /*<<< orphan*/  FUNC30 (struct iwl_mvm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (struct iwl_mvm*,struct iwl_mvm_sta*,void*) ; 
 int /*<<< orphan*/  FUNC32 (struct iwl_mvm*,int) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,int,void*,struct sk_buff_head*) ; 
 void* FUNC35 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC36 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 struct ieee80211_sta* FUNC38 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 () ; 
 int /*<<< orphan*/  FUNC40 () ; 
 int /*<<< orphan*/  FUNC41 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC44 (int) ; 

__attribute__((used)) static void FUNC45(struct iwl_mvm *mvm,
				     struct iwl_rx_packet *pkt)
{
	struct ieee80211_sta *sta;
	u16 sequence = FUNC35(pkt->hdr.sequence);
	int txq_id = FUNC9(sequence);
	/* struct iwl_mvm_tx_resp_v3 is almost the same */
	struct iwl_mvm_tx_resp *tx_resp = (void *)pkt->data;
	int sta_id = FUNC5(tx_resp->ra_tid);
	int tid = FUNC6(tx_resp->ra_tid);
	struct agg_tx_status *agg_status =
		FUNC22(mvm, tx_resp);
	u32 status = FUNC35(agg_status->status);
	u16 ssn = FUNC23(mvm, tx_resp);
	struct sk_buff_head skbs;
	u8 skb_freed = 0;
	u8 lq_color;
	u16 next_reclaimed, seq_ctl;
	bool is_ndp = false;

	FUNC14(&skbs);

	if (FUNC25(mvm))
		txq_id = FUNC35(tx_resp->tx_queue);

	seq_ctl = FUNC35(tx_resp->seq_ctl);

	/* we can free until ssn % q.n_bd not inclusive */
	FUNC34(mvm->trans, txq_id, ssn, &skbs);

	while (!FUNC41(&skbs)) {
		struct sk_buff *skb = FUNC13(&skbs);
		struct ieee80211_tx_info *info = FUNC2(skb);
		struct ieee80211_hdr *hdr = (void *)skb->data;
		bool flushed = false;

		skb_freed++;

		FUNC33(mvm->trans, info->driver_data[1]);

		FUNC37(&info->status, 0, sizeof(info->status));

		/* inform mac80211 about what happened with the frame */
		switch (status & TX_STATUS_MSK) {
		case TX_STATUS_SUCCESS:
		case TX_STATUS_DIRECT_DONE:
			info->flags |= IEEE80211_TX_STAT_ACK;
			break;
		case TX_STATUS_FAIL_FIFO_FLUSHED:
		case TX_STATUS_FAIL_DRAIN_FLOW:
			flushed = true;
			break;
		case TX_STATUS_FAIL_DEST_PS:
			/* the FW should have stopped the queue and not
			 * return this status
			 */
			FUNC11(1);
			info->flags |= IEEE80211_TX_STAT_TX_FILTERED;
			break;
		default:
			break;
		}

		if ((status & TX_STATUS_MSK) != TX_STATUS_SUCCESS &&
		    FUNC16(hdr->frame_control))
			FUNC30(mvm, &mvm->mgmt_last_antenna_idx);

		/*
		 * If we are freeing multiple frames, mark all the frames
		 * but the first one as acked, since they were acknowledged
		 * before
		 * */
		if (skb_freed > 1)
			info->flags |= IEEE80211_TX_STAT_ACK;

		FUNC32(mvm, status);

		info->status.rates[0].count = tx_resp->failure_frame + 1;
		FUNC26(FUNC36(tx_resp->initial_rate),
					    info);
		info->status.status_driver_data[1] =
			(void *)(uintptr_t)FUNC36(tx_resp->initial_rate);

		/* Single frame failure in an AMPDU queue => send BAR */
		if (info->flags & IEEE80211_TX_CTL_AMPDU &&
		    !(info->flags & IEEE80211_TX_STAT_ACK) &&
		    !(info->flags & IEEE80211_TX_STAT_TX_FILTERED) && !flushed)
			info->flags |= IEEE80211_TX_STAT_AMPDU_NO_BACK;
		info->flags &= ~IEEE80211_TX_CTL_AMPDU;

		/* W/A FW bug: seq_ctl is wrong upon failure / BAR frame */
		if (FUNC15(hdr->frame_control))
			seq_ctl = 0;
		else if (status != TX_STATUS_SUCCESS)
			seq_ctl = FUNC35(hdr->seq_ctrl);

		if (FUNC44(!seq_ctl)) {
			struct ieee80211_hdr *hdr = (void *)skb->data;

			/*
			 * If it is an NDP, we can't update next_reclaim since
			 * its sequence control is 0. Note that for that same
			 * reason, NDPs are never sent to A-MPDU'able queues
			 * so that we can never have more than one freed frame
			 * for a single Tx resonse (see WARN_ON below).
			 */
			if (FUNC17(hdr->frame_control))
				is_ndp = true;
		}

		/*
		 * TODO: this is not accurate if we are freeing more than one
		 * packet.
		 */
		info->status.tx_time =
			FUNC35(tx_resp->wireless_media_time);
		FUNC1(FUNC0(info->status.status_driver_data) < 1);
		lq_color = FUNC10(tx_resp->tlc_info);
		info->status.status_driver_data[0] =
			FUNC7(lq_color, tx_resp->reduced_tpc);

		FUNC20(mvm->hw, skb);
	}

	/* This is an aggregation queue or might become one, so we use
	 * the ssn since: ssn = wifi seq_num % 256.
	 * The seq_ctl is the sequence control of the packet to which
	 * this Tx response relates. But if there is a hole in the
	 * bitmap of the BA we received, this Tx response may allow to
	 * reclaim the hole and all the subsequent packets that were
	 * already acked. In that case, seq_ctl != ssn, and the next
	 * packet to be reclaimed will be ssn and not seq_ctl. In that
	 * case, several packets will be reclaimed even if
	 * frame_count = 1.
	 *
	 * The ssn is the index (% 256) of the latest packet that has
	 * treated (acked / dropped) + 1.
	 */
	next_reclaimed = ssn;

	FUNC4(mvm,
			   "TXQ %d status %s (0x%08x)\n",
			   txq_id, FUNC24(status), status);

	FUNC4(mvm,
			   "\t\t\t\tinitial_rate 0x%x retries %d, idx=%d ssn=%d next_reclaimed=0x%x seq_ctl=0x%x\n",
			   FUNC36(tx_resp->initial_rate),
			   tx_resp->failure_frame, FUNC8(sequence),
			   ssn, next_reclaimed, seq_ctl);

	FUNC39();

	sta = FUNC38(mvm->fw_id_to_mac_id[sta_id]);
	/*
	 * sta can't be NULL otherwise it'd mean that the sta has been freed in
	 * the firmware while we still have packets for it in the Tx queues.
	 */
	if (FUNC12(!sta))
		goto out;

	if (!FUNC3(sta)) {
		struct iwl_mvm_sta *mvmsta = FUNC27(sta);

		FUNC31(mvm, mvmsta,
				   FUNC35(tx_resp->wireless_media_time));

		if ((status & TX_STATUS_MSK) != TX_STATUS_SUCCESS &&
		    mvmsta->sta_state < IEEE80211_STA_AUTHORIZED)
			FUNC30(mvm, &mvmsta->tx_ant);

		if (sta->wme && tid != IWL_MGMT_TID) {
			struct iwl_mvm_tid_data *tid_data =
				&mvmsta->tid_data[tid];
			bool send_eosp_ndp = false;

			FUNC42(&mvmsta->lock);

			if (!is_ndp) {
				tid_data->next_reclaimed = next_reclaimed;
				FUNC4(mvm,
						   "Next reclaimed packet:%d\n",
						   next_reclaimed);
			} else {
				FUNC4(mvm,
						   "NDP - don't update next_reclaimed\n");
			}

			FUNC21(mvm, sta, tid);

			if (mvmsta->sleep_tx_count) {
				mvmsta->sleep_tx_count--;
				if (mvmsta->sleep_tx_count &&
				    !FUNC29(mvm, tid_data)) {
					/*
					 * The number of frames in the queue
					 * dropped to 0 even if we sent less
					 * frames than we thought we had on the
					 * Tx queue.
					 * This means we had holes in the BA
					 * window that we just filled, ask
					 * mac80211 to send EOSP since the
					 * firmware won't know how to do that.
					 * Send NDP and the firmware will send
					 * EOSP notification that will trigger
					 * a call to ieee80211_sta_eosp().
					 */
					send_eosp_ndp = true;
				}
			}

			FUNC43(&mvmsta->lock);
			if (send_eosp_ndp) {
				FUNC28(mvm, sta,
					IEEE80211_FRAME_RELEASE_UAPSD,
					1, tid, false, false);
				mvmsta->sleep_tx_count = 0;
				FUNC18(sta, tid);
			}
		}

		if (mvmsta->next_status_eosp) {
			mvmsta->next_status_eosp = false;
			FUNC19(sta);
		}
	}
out:
	FUNC40();
}