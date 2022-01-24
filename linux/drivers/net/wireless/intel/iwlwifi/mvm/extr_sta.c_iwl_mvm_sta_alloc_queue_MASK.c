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
typedef  int /*<<< orphan*/  u8 ;
struct iwl_trans_txq_scd_cfg {int tid; int aggregate; int /*<<< orphan*/  sta_id; int /*<<< orphan*/  frame_limit; int /*<<< orphan*/  fifo; } ;
struct iwl_mvm_sta {unsigned long tfd_queue_msk; size_t reserved_queue; int /*<<< orphan*/  lock; TYPE_2__* tid_data; int /*<<< orphan*/  sta_id; int /*<<< orphan*/  vif; } ;
struct iwl_mvm {int /*<<< orphan*/  trans; TYPE_1__* queue_info; int /*<<< orphan*/  mutex; } ;
struct ieee80211_sta {int dummy; } ;
typedef  enum iwl_mvm_agg_state { ____Placeholder_iwl_mvm_agg_state } iwl_mvm_agg_state ;
struct TYPE_4__ {int seq_number; int txq_id; int state; } ;
struct TYPE_3__ {scalar_t__ status; int reserved; } ;

/* Variables and functions */
 unsigned long FUNC0 (int) ; 
 size_t IEEE80211_INVAL_HW_QUEUE ; 
 int IEEE80211_SCTL_SEQ ; 
 int FUNC1 (int) ; 
 int IWL_AGG_ON ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IWL_FRAME_LIMIT ; 
 int IWL_MAX_TID_COUNT ; 
 int IWL_MVM_DQA_BSS_CLIENT_QUEUE ; 
 int /*<<< orphan*/  IWL_MVM_DQA_MAX_DATA_QUEUE ; 
 int /*<<< orphan*/  IWL_MVM_DQA_MAX_MGMT_QUEUE ; 
 int IWL_MVM_DQA_MIN_DATA_QUEUE ; 
 int IWL_MVM_DQA_MIN_MGMT_QUEUE ; 
 scalar_t__ IWL_MVM_QUEUE_READY ; 
 scalar_t__ IWL_MVM_QUEUE_RESERVED ; 
 scalar_t__ IWL_MVM_QUEUE_SHARED ; 
 int /*<<< orphan*/  STA_MODIFY_QUEUES ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_mvm*,struct ieee80211_sta*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct iwl_mvm*,struct ieee80211_sta*,int,int,struct iwl_trans_txq_scd_cfg*,unsigned int) ; 
 int FUNC7 (struct iwl_mvm*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC8 (struct iwl_mvm*,int) ; 
 int FUNC9 (struct iwl_mvm*,unsigned long,int /*<<< orphan*/ ) ; 
 unsigned int FUNC10 (struct iwl_mvm*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC11 (struct iwl_mvm*) ; 
 int FUNC12 (struct iwl_mvm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct iwl_mvm*,int,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC14 (struct iwl_mvm*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct iwl_mvm*,int,int,int /*<<< orphan*/ ,int,unsigned int,int,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct iwl_mvm*,struct ieee80211_sta*,int /*<<< orphan*/ ,int) ; 
 struct iwl_mvm_sta* FUNC17 (struct ieee80211_sta*) ; 
 int FUNC18 (struct iwl_mvm*,struct ieee80211_sta*,int,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct iwl_mvm*,struct ieee80211_sta*,int,int,int) ; 
 int /*<<< orphan*/  FUNC20 (struct ieee80211_sta*,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC25(struct iwl_mvm *mvm,
				   struct ieee80211_sta *sta, u8 ac, int tid)
{
	struct iwl_mvm_sta *mvmsta = FUNC17(sta);
	struct iwl_trans_txq_scd_cfg cfg = {
		.fifo = FUNC14(mvm, ac),
		.sta_id = mvmsta->sta_id,
		.tid = tid,
		.frame_limit = IWL_FRAME_LIMIT,
	};
	unsigned int wdg_timeout =
		FUNC10(mvm, mvmsta->vif, false, false);
	int queue = -1;
	unsigned long disable_agg_tids = 0;
	enum iwl_mvm_agg_state queue_state;
	bool shared_queue = false, inc_ssn;
	int ssn;
	unsigned long tfd_queue_mask;
	int ret;

	FUNC22(&mvm->mutex);

	if (FUNC11(mvm))
		return FUNC16(mvm, sta, ac, tid);

	FUNC23(&mvmsta->lock);
	tfd_queue_mask = mvmsta->tfd_queue_msk;
	ssn = FUNC1(mvmsta->tid_data[tid].seq_number);
	FUNC24(&mvmsta->lock);

	if (tid == IWL_MAX_TID_COUNT) {
		queue = FUNC7(mvm, mvmsta->sta_id,
						IWL_MVM_DQA_MIN_MGMT_QUEUE,
						IWL_MVM_DQA_MAX_MGMT_QUEUE);
		if (queue >= IWL_MVM_DQA_MIN_MGMT_QUEUE)
			FUNC2(mvm, "Found free MGMT queue #%d\n",
					    queue);

		/* If no such queue is found, we'll use a DATA queue instead */
	}

	if ((queue < 0 && mvmsta->reserved_queue != IEEE80211_INVAL_HW_QUEUE) &&
	    (mvm->queue_info[mvmsta->reserved_queue].status ==
			IWL_MVM_QUEUE_RESERVED)) {
		queue = mvmsta->reserved_queue;
		mvm->queue_info[queue].reserved = true;
		FUNC2(mvm, "Using reserved queue #%d\n", queue);
	}

	if (queue < 0)
		queue = FUNC7(mvm, mvmsta->sta_id,
						IWL_MVM_DQA_MIN_DATA_QUEUE,
						IWL_MVM_DQA_MAX_DATA_QUEUE);
	if (queue < 0) {
		/* try harder - perhaps kill an inactive queue */
		queue = FUNC12(mvm, mvmsta->sta_id);
	}

	/* No free queue - we'll have to share */
	if (queue <= 0) {
		queue = FUNC9(mvm, tfd_queue_mask, ac);
		if (queue > 0) {
			shared_queue = true;
			mvm->queue_info[queue].status = IWL_MVM_QUEUE_SHARED;
		}
	}

	/*
	 * Mark TXQ as ready, even though it hasn't been fully configured yet,
	 * to make sure no one else takes it.
	 * This will allow avoiding re-acquiring the lock at the end of the
	 * configuration. On error we'll mark it back as free.
	 */
	if (queue > 0 && !shared_queue)
		mvm->queue_info[queue].status = IWL_MVM_QUEUE_READY;

	/* This shouldn't happen - out of queues */
	if (FUNC4(queue <= 0)) {
		FUNC3(mvm, "No available queues for tid %d on sta_id %d\n",
			tid, cfg.sta_id);
		return queue;
	}

	/*
	 * Actual en/disablement of aggregations is through the ADD_STA HCMD,
	 * but for configuring the SCD to send A-MPDUs we need to mark the queue
	 * as aggregatable.
	 * Mark all DATA queues as allowing to be aggregated at some point
	 */
	cfg.aggregate = (queue >= IWL_MVM_DQA_MIN_DATA_QUEUE ||
			 queue == IWL_MVM_DQA_BSS_CLIENT_QUEUE);

	FUNC2(mvm,
			    "Allocating %squeue #%d to sta %d on tid %d\n",
			    shared_queue ? "shared " : "", queue,
			    mvmsta->sta_id, tid);

	if (shared_queue) {
		/* Disable any open aggs on this queue */
		disable_agg_tids = FUNC8(mvm, queue);

		if (disable_agg_tids) {
			FUNC2(mvm, "Disabling aggs on queue %d\n",
					    queue);
			FUNC13(mvm, queue,
						     disable_agg_tids, false);
		}
	}

	inc_ssn = FUNC6(mvm, sta, queue, ssn, &cfg, wdg_timeout);

	/*
	 * Mark queue as shared in transport if shared
	 * Note this has to be done after queue enablement because enablement
	 * can also set this value, and there is no indication there to shared
	 * queues
	 */
	if (shared_queue)
		FUNC21(mvm->trans, queue, true);

	FUNC23(&mvmsta->lock);
	/*
	 * This looks racy, but it is not. We have only one packet for
	 * this ra/tid in our Tx path since we stop the Qdisc when we
	 * need to allocate a new TFD queue.
	 */
	if (inc_ssn) {
		mvmsta->tid_data[tid].seq_number += 0x10;
		ssn = (ssn + 1) & IEEE80211_SCTL_SEQ;
	}
	mvmsta->tid_data[tid].txq_id = queue;
	mvmsta->tfd_queue_msk |= FUNC0(queue);
	queue_state = mvmsta->tid_data[tid].state;

	if (mvmsta->reserved_queue == queue)
		mvmsta->reserved_queue = IEEE80211_INVAL_HW_QUEUE;
	FUNC24(&mvmsta->lock);

	if (!shared_queue) {
		ret = FUNC18(mvm, sta, true, STA_MODIFY_QUEUES);
		if (ret)
			goto out_err;

		/* If we need to re-enable aggregations... */
		if (queue_state == IWL_AGG_ON) {
			ret = FUNC19(mvm, sta, tid, queue, true);
			if (ret)
				goto out_err;
		}
	} else {
		/* Redirect queue, if needed */
		ret = FUNC15(mvm, queue, tid, ac, ssn,
					     wdg_timeout, false,
					     FUNC20(sta, tid));
		if (ret)
			goto out_err;
	}

	return 0;

out_err:
	FUNC5(mvm, sta, queue, tid, 0);

	return ret;
}