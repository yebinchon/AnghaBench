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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct sk_buff {scalar_t__ data; } ;
struct htt_tx_done {void* status; void* msdu_id; void* ack_rssi; } ;
struct TYPE_4__ {int num_msdus; int flags2; int /*<<< orphan*/ * msdus; int /*<<< orphan*/  flags; } ;
struct htt_resp {TYPE_2__ data_tx_completion; } ;
struct htt_data_tx_ppdu_dur {int /*<<< orphan*/  tx_duration; int /*<<< orphan*/  info0; } ;
struct htt_data_tx_compl_ppdu_dur {struct htt_data_tx_ppdu_dur* ppdu_dur; int /*<<< orphan*/  info0; } ;
struct ath10k_peer {int /*<<< orphan*/  sta; } ;
struct ath10k_htt {int /*<<< orphan*/  txdone_fifo; } ;
struct TYPE_3__ {scalar_t__ dev_type; } ;
struct ath10k {int /*<<< orphan*/  data_lock; TYPE_1__ bus_param; int /*<<< orphan*/  hw_params; struct ath10k_htt htt; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_HTT ; 
 scalar_t__ ATH10K_DEV_TYPE_HL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HTT_DATA_TX_STATUS ; 
#define  HTT_DATA_TX_STATUS_DISCARD 132 
#define  HTT_DATA_TX_STATUS_DOWNLOAD_FAIL 131 
#define  HTT_DATA_TX_STATUS_NO_ACK 130 
#define  HTT_DATA_TX_STATUS_OK 129 
#define  HTT_DATA_TX_STATUS_POSTPONE 128 
 int HTT_TX_CMPL_FLAG_PA_PRESENT ; 
 int HTT_TX_CMPL_FLAG_PPDU_DURATION_PRESENT ; 
 int HTT_TX_CMPL_FLAG_PPID_PRESENT ; 
 int /*<<< orphan*/  HTT_TX_COMPL_PPDU_DUR_INFO0_NUM_ENTRIES_MASK ; 
 void* HTT_TX_COMPL_STATE_ACK ; 
 void* HTT_TX_COMPL_STATE_DISCARD ; 
 void* HTT_TX_COMPL_STATE_NOACK ; 
 int /*<<< orphan*/  HTT_TX_PPDU_DUR_INFO0_PEER_ID_MASK ; 
 int /*<<< orphan*/  HTT_TX_PPDU_DUR_INFO0_TID_MASK ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct htt_resp*) ; 
 struct ath10k_peer* FUNC6 (struct ath10k*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct htt_resp*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath10k_htt*,struct htt_tx_done*) ; 
 int /*<<< orphan*/  FUNC9 (struct ath10k*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct htt_tx_done) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC16(struct ath10k *ar,
				       struct sk_buff *skb)
{
	struct ath10k_htt *htt = &ar->htt;
	struct htt_resp *resp = (struct htt_resp *)skb->data;
	struct htt_tx_done tx_done = {};
	int status = FUNC1(resp->data_tx_completion.flags, HTT_DATA_TX_STATUS);
	__le16 msdu_id, *msdus;
	bool rssi_enabled = false;
	u8 msdu_count = 0, num_airtime_records, tid;
	int i, htt_pad = 0;
	struct htt_data_tx_compl_ppdu_dur *ppdu_info;
	struct ath10k_peer *peer;
	u16 ppdu_info_offset = 0, peer_id;
	u32 tx_duration;

	switch (status) {
	case HTT_DATA_TX_STATUS_NO_ACK:
		tx_done.status = HTT_TX_COMPL_STATE_NOACK;
		break;
	case HTT_DATA_TX_STATUS_OK:
		tx_done.status = HTT_TX_COMPL_STATE_ACK;
		break;
	case HTT_DATA_TX_STATUS_DISCARD:
	case HTT_DATA_TX_STATUS_POSTPONE:
	case HTT_DATA_TX_STATUS_DOWNLOAD_FAIL:
		tx_done.status = HTT_TX_COMPL_STATE_DISCARD;
		break;
	default:
		FUNC9(ar, "unhandled tx completion status %d\n", status);
		tx_done.status = HTT_TX_COMPL_STATE_DISCARD;
		break;
	}

	FUNC4(ar, ATH10K_DBG_HTT, "htt tx completion num_msdus %d\n",
		   resp->data_tx_completion.num_msdus);

	msdu_count = resp->data_tx_completion.num_msdus;
	msdus = resp->data_tx_completion.msdus;
	rssi_enabled = FUNC5(&ar->hw_params, resp);

	if (rssi_enabled)
		htt_pad = FUNC7(&ar->hw_params,
							    resp);

	for (i = 0; i < msdu_count; i++) {
		msdu_id = msdus[i];
		tx_done.msdu_id = FUNC2(msdu_id);

		if (rssi_enabled) {
			/* Total no of MSDUs should be even,
			 * if odd MSDUs are sent firmware fills
			 * last msdu id with 0xffff
			 */
			if (msdu_count & 0x01) {
				msdu_id = msdus[msdu_count +  i + 1 + htt_pad];
				tx_done.ack_rssi = FUNC2(msdu_id);
			} else {
				msdu_id = msdus[msdu_count +  i + htt_pad];
				tx_done.ack_rssi = FUNC2(msdu_id);
			}
		}

		/* kfifo_put: In practice firmware shouldn't fire off per-CE
		 * interrupt and main interrupt (MSI/-X range case) for the same
		 * HTC service so it should be safe to use kfifo_put w/o lock.
		 *
		 * From kfifo_put() documentation:
		 *  Note that with only one concurrent reader and one concurrent
		 *  writer, you don't need extra locking to use these macro.
		 */
		if (ar->bus_param.dev_type == ATH10K_DEV_TYPE_HL) {
			FUNC8(htt, &tx_done);
		} else if (!FUNC11(&htt->txdone_fifo, tx_done)) {
			FUNC9(ar, "txdone fifo overrun, msdu_id %d status %d\n",
				    tx_done.msdu_id, tx_done.status);
			FUNC8(htt, &tx_done);
		}
	}

	if (!(resp->data_tx_completion.flags2 & HTT_TX_CMPL_FLAG_PPDU_DURATION_PRESENT))
		return;

	ppdu_info_offset = (msdu_count & 0x01) ? msdu_count + 1 : msdu_count;

	if (rssi_enabled)
		ppdu_info_offset += ppdu_info_offset;

	if (resp->data_tx_completion.flags2 &
	    (HTT_TX_CMPL_FLAG_PPID_PRESENT | HTT_TX_CMPL_FLAG_PA_PRESENT))
		ppdu_info_offset += 2;

	ppdu_info = (struct htt_data_tx_compl_ppdu_dur *)&msdus[ppdu_info_offset];
	num_airtime_records = FUNC0(HTT_TX_COMPL_PPDU_DUR_INFO0_NUM_ENTRIES_MASK,
					FUNC3(ppdu_info->info0));

	for (i = 0; i < num_airtime_records; i++) {
		struct htt_data_tx_ppdu_dur *ppdu_dur;
		u32 info0;

		ppdu_dur = &ppdu_info->ppdu_dur[i];
		info0 = FUNC3(ppdu_dur->info0);

		peer_id = FUNC0(HTT_TX_PPDU_DUR_INFO0_PEER_ID_MASK,
				    info0);
		FUNC12();
		FUNC14(&ar->data_lock);

		peer = FUNC6(ar, peer_id);
		if (!peer) {
			FUNC15(&ar->data_lock);
			FUNC13();
			continue;
		}

		tid = FUNC0(HTT_TX_PPDU_DUR_INFO0_TID_MASK, info0);
		tx_duration = FUNC3(ppdu_dur->tx_duration);

		FUNC10(peer->sta, tid, tx_duration, 0);

		FUNC15(&ar->data_lock);
		FUNC13();
	}
}