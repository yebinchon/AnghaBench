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
typedef  size_t u8 ;
typedef  size_t u16 ;
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct iwl_tx_cmd {TYPE_1__* hdr; } ;
struct iwl_mvm_sta {scalar_t__ sta_id; int /*<<< orphan*/  lock; TYPE_3__* tid_data; } ;
struct iwl_mvm {int /*<<< orphan*/  trans; int /*<<< orphan*/  add_stream_wk; TYPE_2__* queue_info; } ;
struct iwl_device_cmd {scalar_t__ payload; } ;
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  seq_ctrl; int /*<<< orphan*/  frame_control; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_6__ {scalar_t__ state; size_t seq_number; size_t txq_id; } ;
struct TYPE_5__ {scalar_t__ status; int /*<<< orphan*/ * last_frame_time; } ;
struct TYPE_4__ {int /*<<< orphan*/  seq_ctrl; } ;

/* Variables and functions */
 size_t IEEE80211_SCTL_FRAG ; 
 size_t IEEE80211_SCTL_SEQ ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int IEEE80211_TX_CTL_AMPDU ; 
 int IEEE80211_TX_CTL_SEND_AFTER_DTIM ; 
 int IEEE80211_TX_STATUS_EOSP ; 
 scalar_t__ IWL_AGG_ON ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,scalar_t__,size_t,...) ; 
 size_t IWL_MAX_TID_COUNT ; 
 size_t IWL_MVM_INVALID_QUEUE ; 
 scalar_t__ IWL_MVM_INVALID_STA ; 
 scalar_t__ IWL_MVM_NON_TRANSMITTING_AP ; 
 scalar_t__ IWL_MVM_QUEUE_SHARED ; 
 size_t IWL_TID_NON_QOS ; 
 scalar_t__ FUNC2 (int,char*,...) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 size_t FUNC5 (struct ieee80211_hdr*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC13 (struct iwl_mvm*,struct sk_buff*) ; 
 struct iwl_device_cmd* FUNC14 (struct iwl_mvm*,struct sk_buff*,struct ieee80211_tx_info*,int,struct ieee80211_sta*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,struct iwl_device_cmd*) ; 
 struct iwl_mvm_sta* FUNC16 (struct ieee80211_sta*) ; 
 scalar_t__ FUNC17 (struct iwl_mvm*,struct iwl_mvm_sta*,size_t) ; 
 scalar_t__ FUNC18 (struct iwl_mvm*,size_t) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,struct iwl_device_cmd*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,struct sk_buff*,struct iwl_device_cmd*,size_t) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (int) ; 

__attribute__((used)) static int FUNC25(struct iwl_mvm *mvm, struct sk_buff *skb,
			   struct ieee80211_tx_info *info,
			   struct ieee80211_sta *sta)
{
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
	struct iwl_mvm_sta *mvmsta;
	struct iwl_device_cmd *dev_cmd;
	__le16 fc;
	u16 seq_number = 0;
	u8 tid = IWL_MAX_TID_COUNT;
	u16 txq_id;
	bool is_ampdu = false;
	int hdrlen;

	mvmsta = FUNC16(sta);
	fc = hdr->frame_control;
	hdrlen = FUNC7(fc);

	if (IWL_MVM_NON_TRANSMITTING_AP && FUNC10(fc))
		return -1;

	if (FUNC3(!mvmsta))
		return -1;

	if (FUNC3(mvmsta->sta_id == IWL_MVM_INVALID_STA))
		return -1;

	if (FUNC24(FUNC10(fc)))
		FUNC13(mvm, skb);

	dev_cmd = FUNC14(mvm, skb, info, hdrlen,
					sta, mvmsta->sta_id);
	if (!dev_cmd)
		goto drop;

	/*
	 * we handle that entirely ourselves -- for uAPSD the firmware
	 * will always send a notification, and for PS-Poll responses
	 * we'll notify mac80211 when getting frame status
	 */
	info->flags &= ~IEEE80211_TX_STATUS_EOSP;

	FUNC22(&mvmsta->lock);

	/* nullfunc frames should go to the MGMT queue regardless of QOS,
	 * the condition of !ieee80211_is_qos_nullfunc(fc) keeps the default
	 * assignment of MGMT TID
	 */
	if (FUNC9(fc) && !FUNC11(fc)) {
		tid = FUNC5(hdr);
		if (FUNC2(tid >= IWL_MAX_TID_COUNT, "Invalid TID %d", tid))
			goto drop_unlock_sta;

		is_ampdu = info->flags & IEEE80211_TX_CTL_AMPDU;
		if (FUNC2(is_ampdu &&
			      mvmsta->tid_data[tid].state != IWL_AGG_ON,
			      "Invalid internal agg state %d for TID %d",
			       mvmsta->tid_data[tid].state, tid))
			goto drop_unlock_sta;

		seq_number = mvmsta->tid_data[tid].seq_number;
		seq_number &= IEEE80211_SCTL_SEQ;

		if (!FUNC12(mvm)) {
			struct iwl_tx_cmd *tx_cmd = (void *)dev_cmd->payload;

			hdr->seq_ctrl &= FUNC4(IEEE80211_SCTL_FRAG);
			hdr->seq_ctrl |= FUNC4(seq_number);
			/* update the tx_cmd hdr as it was already copied */
			tx_cmd->hdr->seq_ctrl = hdr->seq_ctrl;
		}
	} else if (FUNC8(fc) && !FUNC9(fc)) {
		tid = IWL_TID_NON_QOS;
	}

	txq_id = mvmsta->tid_data[tid].txq_id;

	FUNC3(info->flags & IEEE80211_TX_CTL_SEND_AFTER_DTIM);

	if (FUNC2(txq_id == IWL_MVM_INVALID_QUEUE, "Invalid TXQ id")) {
		FUNC19(mvm->trans, dev_cmd);
		FUNC23(&mvmsta->lock);
		return 0;
	}

	if (!FUNC12(mvm)) {
		/* Keep track of the time of the last frame for this RA/TID */
		mvm->queue_info[txq_id].last_frame_time[tid] = jiffies;

		/*
		 * If we have timed-out TIDs - schedule the worker that will
		 * reconfig the queues and update them
		 *
		 * Note that the no lock is taken here in order to not serialize
		 * the TX flow. This isn't dangerous because scheduling
		 * mvm->add_stream_wk can't ruin the state, and if we DON'T
		 * schedule it due to some race condition then next TX we get
		 * here we will.
		 */
		if (FUNC24(mvm->queue_info[txq_id].status ==
			     IWL_MVM_QUEUE_SHARED &&
			     FUNC18(mvm, txq_id)))
			FUNC21(&mvm->add_stream_wk);
	}

	FUNC1(mvm, "TX to [%d|%d] Q:%d - seq: 0x%x len %d\n",
		     mvmsta->sta_id, tid, txq_id,
		     FUNC0(seq_number), skb->len);

	/* From now on, we cannot access info->control */
	FUNC15(skb, dev_cmd);

	if (FUNC20(mvm->trans, skb, dev_cmd, txq_id))
		goto drop_unlock_sta;

	if (tid < IWL_MAX_TID_COUNT && !FUNC6(fc))
		mvmsta->tid_data[tid].seq_number = seq_number + 0x10;

	FUNC23(&mvmsta->lock);

	if (FUNC17(mvm, mvmsta,
				  tid == IWL_MAX_TID_COUNT ? 0 : tid))
		goto drop;

	return 0;

drop_unlock_sta:
	FUNC19(mvm->trans, dev_cmd);
	FUNC23(&mvmsta->lock);
drop:
	FUNC1(mvm, "TX to [%d|%d] dropped\n", mvmsta->sta_id, tid);
	return -1;
}