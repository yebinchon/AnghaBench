#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct iwl_mvm_vif {int ap_sta_id; int /*<<< orphan*/  color; int /*<<< orphan*/  id; } ;
struct iwl_mvm_txq {int /*<<< orphan*/  tx_request; int /*<<< orphan*/  list; void* txq_id; } ;
struct TYPE_9__ {int /*<<< orphan*/  lock; } ;
struct TYPE_10__ {TYPE_3__ pers; } ;
struct TYPE_11__ {TYPE_4__ rs_drv; } ;
struct iwl_mvm_sta {int sta_id; int tt_tx_protection; int tid_disable_agg; int /*<<< orphan*/  tx_ant; TYPE_5__ lq_sta; struct iwl_mvm_rxq_dup_data* dup_data; scalar_t__ agg_tids; TYPE_6__* tid_data; scalar_t__ tfd_queue_msk; int /*<<< orphan*/  sta_type; scalar_t__ tx_protection; int /*<<< orphan*/  max_agg_bufsize; struct ieee80211_vif* vif; int /*<<< orphan*/  mac_id_n_color; int /*<<< orphan*/  lock; } ;
struct iwl_mvm_rxq_dup_data {TYPE_6__* last_seq; } ;
struct iwl_mvm_int_sta {int sta_id; int /*<<< orphan*/  type; } ;
struct iwl_mvm {int /*<<< orphan*/ * fw_id_to_mac_id; TYPE_2__* trans; int /*<<< orphan*/  status; int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_sta {scalar_t__ tdls; int /*<<< orphan*/ * txq; int /*<<< orphan*/  addr; } ;
struct TYPE_12__ {void* txq_id; int /*<<< orphan*/  seq_number; } ;
struct TYPE_8__ {int num_rx_queues; TYPE_1__* trans_cfg; } ;
struct TYPE_7__ {int /*<<< orphan*/  gen2; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int IWL_MAX_TID_COUNT ; 
 void* IWL_MVM_INVALID_QUEUE ; 
 int IWL_MVM_INVALID_STA ; 
 int /*<<< orphan*/  IWL_MVM_STATUS_IN_HW_RESTART ; 
 int /*<<< orphan*/  IWL_STA_LINK ; 
 int /*<<< orphan*/  IWL_STA_TDLS_LINK ; 
 int /*<<< orphan*/  LINK_QUAL_AGG_FRAME_LIMIT_DEF ; 
 int /*<<< orphan*/  LINK_QUAL_AGG_FRAME_LIMIT_GEN2_DEF ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 unsigned int STA_MODIFY_QUEUES ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_vif*) ; 
 int FUNC6 (struct iwl_mvm*,struct iwl_mvm_int_sta*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct iwl_mvm*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct iwl_mvm*) ; 
 scalar_t__ FUNC9 (struct iwl_mvm*) ; 
 scalar_t__ FUNC10 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC11 (struct iwl_mvm*,struct ieee80211_sta*) ; 
 int FUNC12 (struct iwl_mvm*,struct ieee80211_sta*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct iwl_mvm*,struct iwl_mvm_sta*) ; 
 struct iwl_mvm_sta* FUNC14 (struct ieee80211_sta*) ; 
 int FUNC15 (struct iwl_mvm*,struct ieee80211_sta*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (struct iwl_mvm*,int /*<<< orphan*/ *) ; 
 struct iwl_mvm_txq* FUNC17 (int /*<<< orphan*/ ) ; 
 struct iwl_mvm_vif* FUNC18 (struct ieee80211_vif*) ; 
 struct iwl_mvm_rxq_dup_data* FUNC19 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_6__*,int,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC25(struct iwl_mvm *mvm,
		    struct ieee80211_vif *vif,
		    struct ieee80211_sta *sta)
{
	struct iwl_mvm_vif *mvmvif = FUNC18(vif);
	struct iwl_mvm_sta *mvm_sta = FUNC14(sta);
	struct iwl_mvm_rxq_dup_data *dup_data;
	int i, ret, sta_id;
	bool sta_update = false;
	unsigned int sta_flags = 0;

	FUNC20(&mvm->mutex);

	if (!FUNC24(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status))
		sta_id = FUNC7(mvm,
						  FUNC5(vif));
	else
		sta_id = mvm_sta->sta_id;

	if (sta_id == IWL_MVM_INVALID_STA)
		return -ENOSPC;

	FUNC23(&mvm_sta->lock);

	/* if this is a HW restart re-alloc existing queues */
	if (FUNC24(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status)) {
		struct iwl_mvm_int_sta tmp_sta = {
			.sta_id = sta_id,
			.type = mvm_sta->sta_type,
		};

		/*
		 * First add an empty station since allocating
		 * a queue requires a valid station
		 */
		ret = FUNC6(mvm, &tmp_sta, sta->addr,
						 mvmvif->id, mvmvif->color);
		if (ret)
			goto err;

		FUNC11(mvm, sta);
		sta_update = true;
		sta_flags = FUNC9(mvm) ? 0 : STA_MODIFY_QUEUES;
		goto update_fw;
	}

	mvm_sta->sta_id = sta_id;
	mvm_sta->mac_id_n_color = FUNC1(mvmvif->id,
						      mvmvif->color);
	mvm_sta->vif = vif;
	if (!mvm->trans->trans_cfg->gen2)
		mvm_sta->max_agg_bufsize = LINK_QUAL_AGG_FRAME_LIMIT_DEF;
	else
		mvm_sta->max_agg_bufsize = LINK_QUAL_AGG_FRAME_LIMIT_GEN2_DEF;
	mvm_sta->tx_protection = 0;
	mvm_sta->tt_tx_protection = false;
	mvm_sta->sta_type = sta->tdls ? IWL_STA_TDLS_LINK : IWL_STA_LINK;

	/* HW restart, don't assume the memory has been zeroed */
	mvm_sta->tid_disable_agg = 0xffff; /* No aggs at first */
	mvm_sta->tfd_queue_msk = 0;

	/* for HW restart - reset everything but the sequence number */
	for (i = 0; i <= IWL_MAX_TID_COUNT; i++) {
		u16 seq = mvm_sta->tid_data[i].seq_number;
		FUNC21(&mvm_sta->tid_data[i], 0, sizeof(mvm_sta->tid_data[i]));
		mvm_sta->tid_data[i].seq_number = seq;

		/*
		 * Mark all queues for this STA as unallocated and defer TX
		 * frames until the queue is allocated
		 */
		mvm_sta->tid_data[i].txq_id = IWL_MVM_INVALID_QUEUE;
	}

	for (i = 0; i < FUNC0(sta->txq); i++) {
		struct iwl_mvm_txq *mvmtxq =
			FUNC17(sta->txq[i]);

		mvmtxq->txq_id = IWL_MVM_INVALID_QUEUE;
		FUNC2(&mvmtxq->list);
		FUNC4(&mvmtxq->tx_request, 0);
	}

	mvm_sta->agg_tids = 0;

	if (FUNC8(mvm) &&
	    !FUNC24(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status)) {
		int q;

		dup_data = FUNC19(mvm->trans->num_rx_queues,
				   sizeof(*dup_data), GFP_KERNEL);
		if (!dup_data)
			return -ENOMEM;
		/*
		 * Initialize all the last_seq values to 0xffff which can never
		 * compare equal to the frame's seq_ctrl in the check in
		 * iwl_mvm_is_dup() since the lower 4 bits are the fragment
		 * number and fragmented packets don't reach that function.
		 *
		 * This thus allows receiving a packet with seqno 0 and the
		 * retry bit set as the very first packet on a new TID.
		 */
		for (q = 0; q < mvm->trans->num_rx_queues; q++)
			FUNC21(dup_data[q].last_seq, 0xff,
			       sizeof(dup_data[q].last_seq));
		mvm_sta->dup_data = dup_data;
	}

	if (!FUNC9(mvm)) {
		ret = FUNC12(mvm, sta,
						 FUNC5(vif));
		if (ret)
			goto err;
	}

	/*
	 * if rs is registered with mac80211, then "add station" will be handled
	 * via the corresponding ops, otherwise need to notify rate scaling here
	 */
	if (FUNC10(mvm))
		FUNC13(mvm, mvm_sta);
	else
		FUNC23(&mvm_sta->lq_sta.rs_drv.pers.lock);

	FUNC16(mvm, &mvm_sta->tx_ant);

update_fw:
	ret = FUNC15(mvm, sta, sta_update, sta_flags);
	if (ret)
		goto err;

	if (vif->type == NL80211_IFTYPE_STATION) {
		if (!sta->tdls) {
			FUNC3(mvmvif->ap_sta_id != IWL_MVM_INVALID_STA);
			mvmvif->ap_sta_id = sta_id;
		} else {
			FUNC3(mvmvif->ap_sta_id == IWL_MVM_INVALID_STA);
		}
	}

	FUNC22(mvm->fw_id_to_mac_id[sta_id], sta);

	return 0;

err:
	return ret;
}