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
typedef  size_t u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct sk_buff {int dummy; } ;
struct napi_struct {int dummy; } ;
struct iwl_rx_mpdu_desc {int mac_flags2; int amsdu_info; int /*<<< orphan*/  reorder_data; } ;
struct iwl_mvm_sta {scalar_t__ sta_id; } ;
struct iwl_mvm_reorder_buffer {int valid; int head_sn; int buf_size; int last_amsdu; size_t last_sub_index; int /*<<< orphan*/  lock; int /*<<< orphan*/  num_stored; } ;
struct TYPE_2__ {int /*<<< orphan*/  reorder_time; int /*<<< orphan*/  frames; } ;
struct iwl_mvm_reorder_buf_entry {TYPE_1__ e; } ;
struct iwl_mvm_baid_data {size_t tid; scalar_t__ sta_id; int entries_per_queue; struct iwl_mvm_reorder_buf_entry* entries; struct iwl_mvm_reorder_buffer* reorder_buf; } ;
struct iwl_mvm {int /*<<< orphan*/ * baid_map; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_rx_status {int /*<<< orphan*/  device_timestamp; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; int /*<<< orphan*/  addr1; } ;

/* Variables and functions */
 struct ieee80211_rx_status* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,char*,size_t,int) ; 
 int /*<<< orphan*/  IWL_MVM_RELEASE_SEND_RSS_SYNC ; 
 int IWL_RX_MPDU_AMSDU_LAST_SUBFRAME ; 
 size_t IWL_RX_MPDU_AMSDU_SUBFRAME_IDX_MASK ; 
 int IWL_RX_MPDU_MFLG2_AMSDU ; 
 int IWL_RX_MPDU_REORDER_BAID_MASK ; 
 int IWL_RX_MPDU_REORDER_BAID_SHIFT ; 
 int IWL_RX_MPDU_REORDER_BA_OLD_SN ; 
 int IWL_RX_MPDU_REORDER_NSSN_MASK ; 
 int IWL_RX_MPDU_REORDER_SN_MASK ; 
 int IWL_RX_MPDU_REORDER_SN_SHIFT ; 
 size_t IWL_RX_REORDER_DATA_INVALID_BAID ; 
 scalar_t__ FUNC3 (int,char*,size_t,scalar_t__,size_t,scalar_t__,size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 size_t FUNC6 (struct ieee80211_hdr*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int) ; 
 scalar_t__ FUNC11 (int,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct iwl_mvm*,struct ieee80211_sta*,size_t,struct iwl_mvm_reorder_buffer*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct iwl_mvm*,struct ieee80211_sta*,struct napi_struct*,struct iwl_mvm_baid_data*,struct iwl_mvm_reorder_buffer*,int,int /*<<< orphan*/ ) ; 
 struct ieee80211_hdr* FUNC16 (struct sk_buff*) ; 
 struct iwl_mvm_sta* FUNC17 (struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC18 (struct iwl_mvm*,size_t,int) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*) ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 
 struct iwl_mvm_baid_data* FUNC21 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC25 (int) ; 

__attribute__((used)) static bool FUNC26(struct iwl_mvm *mvm,
			    struct napi_struct *napi,
			    int queue,
			    struct ieee80211_sta *sta,
			    struct sk_buff *skb,
			    struct iwl_rx_mpdu_desc *desc)
{
	struct ieee80211_rx_status *rx_status = FUNC0(skb);
	struct ieee80211_hdr *hdr = FUNC16(skb);
	struct iwl_mvm_sta *mvm_sta;
	struct iwl_mvm_baid_data *baid_data;
	struct iwl_mvm_reorder_buffer *buffer;
	struct sk_buff *tail;
	u32 reorder = FUNC20(desc->reorder_data);
	bool amsdu = desc->mac_flags2 & IWL_RX_MPDU_MFLG2_AMSDU;
	bool last_subframe =
		desc->amsdu_info & IWL_RX_MPDU_AMSDU_LAST_SUBFRAME;
	u8 tid = FUNC6(hdr);
	u8 sub_frame_idx = desc->amsdu_info &
			   IWL_RX_MPDU_AMSDU_SUBFRAME_IDX_MASK;
	struct iwl_mvm_reorder_buf_entry *entries;
	int index;
	u16 nssn, sn;
	u8 baid;

	baid = (reorder & IWL_RX_MPDU_REORDER_BAID_MASK) >>
		IWL_RX_MPDU_REORDER_BAID_SHIFT;

	/*
	 * This also covers the case of receiving a Block Ack Request
	 * outside a BA session; we'll pass it to mac80211 and that
	 * then sends a delBA action frame.
	 * This also covers pure monitor mode, in which case we won't
	 * have any BA sessions.
	 */
	if (baid == IWL_RX_REORDER_DATA_INVALID_BAID)
		return false;

	/* no sta yet */
	if (FUNC4(FUNC1(sta),
		      "Got valid BAID without a valid station assigned\n"))
		return false;

	mvm_sta = FUNC17(sta);

	/* not a data packet or a bar */
	if (!FUNC7(hdr->frame_control) &&
	    (!FUNC9(hdr->frame_control) ||
	     FUNC12(hdr->addr1)))
		return false;

	if (FUNC25(!FUNC8(hdr->frame_control)))
		return false;

	baid_data = FUNC21(mvm->baid_map[baid]);
	if (!baid_data) {
		FUNC2(mvm,
			     "Got valid BAID but no baid allocated, bypass the re-ordering buffer. Baid %d reorder 0x%x\n",
			      baid, reorder);
		return false;
	}

	if (FUNC3(tid != baid_data->tid || mvm_sta->sta_id != baid_data->sta_id,
		 "baid 0x%x is mapped to sta:%d tid:%d, but was received for sta:%d tid:%d\n",
		 baid, baid_data->sta_id, baid_data->tid, mvm_sta->sta_id,
		 tid))
		return false;

	nssn = reorder & IWL_RX_MPDU_REORDER_NSSN_MASK;
	sn = (reorder & IWL_RX_MPDU_REORDER_SN_MASK) >>
		IWL_RX_MPDU_REORDER_SN_SHIFT;

	buffer = &baid_data->reorder_buf[queue];
	entries = &baid_data->entries[queue * baid_data->entries_per_queue];

	FUNC23(&buffer->lock);

	if (!buffer->valid) {
		if (reorder & IWL_RX_MPDU_REORDER_BA_OLD_SN) {
			FUNC24(&buffer->lock);
			return false;
		}
		buffer->valid = true;
	}

	if (FUNC7(hdr->frame_control)) {
		FUNC15(mvm, sta, napi, baid_data,
				       buffer, nssn, 0);
		goto drop;
	}

	/*
	 * If there was a significant jump in the nssn - adjust.
	 * If the SN is smaller than the NSSN it might need to first go into
	 * the reorder buffer, in which case we just release up to it and the
	 * rest of the function will take care of storing it and releasing up to
	 * the nssn.
	 * This should not happen. This queue has been lagging and it should
	 * have been updated by a IWL_MVM_RXQ_NSSN_SYNC notification. Be nice
	 * and update the other queues.
	 */
	if (!FUNC13(nssn, buffer->head_sn + buffer->buf_size,
				buffer->buf_size) ||
	    !FUNC11(sn, buffer->head_sn + buffer->buf_size)) {
		u16 min_sn = FUNC11(sn, nssn) ? sn : nssn;

		FUNC15(mvm, sta, napi, baid_data, buffer,
				       min_sn, IWL_MVM_RELEASE_SEND_RSS_SYNC);
	}

	FUNC14(mvm, sta, tid, buffer, reorder,
				 rx_status->device_timestamp, queue);

	/* drop any oudated packets */
	if (FUNC11(sn, buffer->head_sn))
		goto drop;

	/* release immediately if allowed by nssn and no stored frames */
	if (!buffer->num_stored && FUNC11(sn, nssn)) {
		if (FUNC13(buffer->head_sn, nssn,
				       buffer->buf_size) &&
		   (!amsdu || last_subframe)) {
			/*
			 * If we crossed the 2048 or 0 SN, notify all the
			 * queues. This is done in order to avoid having a
			 * head_sn that lags behind for too long. When that
			 * happens, we can get to a situation where the head_sn
			 * is within the interval [nssn - buf_size : nssn]
			 * which will make us think that the nssn is a packet
			 * that we already freed because of the reordering
			 * buffer and we will ignore it. So maintain the
			 * head_sn somewhat updated across all the queues:
			 * when it crosses 0 and 2048.
			 */
			if (sn == 2048 || sn == 0)
				FUNC18(mvm, baid, sn);
			buffer->head_sn = nssn;
		}
		/* No need to update AMSDU last SN - we are moving the head */
		FUNC24(&buffer->lock);
		return false;
	}

	/*
	 * release immediately if there are no stored frames, and the sn is
	 * equal to the head.
	 * This can happen due to reorder timer, where NSSN is behind head_sn.
	 * When we released everything, and we got the next frame in the
	 * sequence, according to the NSSN we can't release immediately,
	 * while technically there is no hole and we can move forward.
	 */
	if (!buffer->num_stored && sn == buffer->head_sn) {
		if (!amsdu || last_subframe) {
			if (sn == 2048 || sn == 0)
				FUNC18(mvm, baid, sn);
			buffer->head_sn = FUNC10(buffer->head_sn);
		}
		/* No need to update AMSDU last SN - we are moving the head */
		FUNC24(&buffer->lock);
		return false;
	}

	index = sn % buffer->buf_size;

	/*
	 * Check if we already stored this frame
	 * As AMSDU is either received or not as whole, logic is simple:
	 * If we have frames in that position in the buffer and the last frame
	 * originated from AMSDU had a different SN then it is a retransmission.
	 * If it is the same SN then if the subframe index is incrementing it
	 * is the same AMSDU - otherwise it is a retransmission.
	 */
	tail = FUNC22(&entries[index].e.frames);
	if (tail && !amsdu)
		goto drop;
	else if (tail && (sn != buffer->last_amsdu ||
			  buffer->last_sub_index >= sub_frame_idx))
		goto drop;

	/* put in reorder buffer */
	FUNC5(&entries[index].e.frames, skb);
	buffer->num_stored++;
	entries[index].e.reorder_time = jiffies;

	if (amsdu) {
		buffer->last_amsdu = sn;
		buffer->last_sub_index = sub_frame_idx;
	}

	/*
	 * We cannot trust NSSN for AMSDU sub-frames that are not the last.
	 * The reason is that NSSN advances on the first sub-frame, and may
	 * cause the reorder buffer to advance before all the sub-frames arrive.
	 * Example: reorder buffer contains SN 0 & 2, and we receive AMSDU with
	 * SN 1. NSSN for first sub frame will be 3 with the result of driver
	 * releasing SN 0,1, 2. When sub-frame 1 arrives - reorder buffer is
	 * already ahead and it will be dropped.
	 * If the last sub-frame is not on this queue - we will get frame
	 * release notification with up to date NSSN.
	 */
	if (!amsdu || last_subframe)
		FUNC15(mvm, sta, napi, baid_data,
				       buffer, nssn,
				       IWL_MVM_RELEASE_SEND_RSS_SYNC);

	FUNC24(&buffer->lock);
	return true;

drop:
	FUNC19(skb);
	FUNC24(&buffer->lock);
	return true;
}