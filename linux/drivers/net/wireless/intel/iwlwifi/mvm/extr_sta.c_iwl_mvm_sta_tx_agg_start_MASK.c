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
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u16 ;
struct iwl_mvm_tid_data {scalar_t__ state; scalar_t__ txq_id; size_t ssn; size_t next_reclaimed; int /*<<< orphan*/  seq_number; } ;
struct iwl_mvm_sta {int /*<<< orphan*/  lock; int /*<<< orphan*/  sta_id; struct iwl_mvm_tid_data* tid_data; } ;
struct iwl_mvm {TYPE_3__* trans; TYPE_1__* queue_info; int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int /*<<< orphan*/  addr; } ;
struct TYPE_6__ {TYPE_2__* trans_cfg; } ;
struct TYPE_5__ {scalar_t__ gen2; } ;
struct TYPE_4__ {scalar_t__ status; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ IWL_AGG_OFF ; 
 scalar_t__ IWL_AGG_QUEUED ; 
 scalar_t__ IWL_AGG_STARTING ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,size_t,...) ; 
 scalar_t__ IWL_EMPTYING_HW_QUEUE_ADDBA ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,char*,...) ; 
 size_t IWL_MAX_HW_QUEUES ; 
 size_t IWL_MAX_TID_COUNT ; 
 int /*<<< orphan*/  IWL_MVM_DQA_MAX_DATA_QUEUE ; 
 int /*<<< orphan*/  IWL_MVM_DQA_MIN_DATA_QUEUE ; 
 scalar_t__ IWL_MVM_INVALID_QUEUE ; 
 scalar_t__ IWL_MVM_QUEUE_RESERVED ; 
 scalar_t__ IWL_MVM_QUEUE_SHARED ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_vif*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC6 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct iwl_mvm*) ; 
 int FUNC8 (struct iwl_mvm*,struct ieee80211_sta*,int /*<<< orphan*/ ,size_t) ; 
 struct iwl_mvm_sta* FUNC9 (struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * tid_to_mac80211_ac ; 
 scalar_t__ FUNC13 (int) ; 

int FUNC14(struct iwl_mvm *mvm, struct ieee80211_vif *vif,
			     struct ieee80211_sta *sta, u16 tid, u16 *ssn)
{
	struct iwl_mvm_sta *mvmsta = FUNC9(sta);
	struct iwl_mvm_tid_data *tid_data;
	u16 normalized_ssn;
	u16 txq_id;
	int ret;

	if (FUNC4(tid >= IWL_MAX_TID_COUNT))
		return -EINVAL;

	if (mvmsta->tid_data[tid].state != IWL_AGG_QUEUED &&
	    mvmsta->tid_data[tid].state != IWL_AGG_OFF) {
		FUNC2(mvm,
			"Start AGG when state is not IWL_AGG_QUEUED or IWL_AGG_OFF %d!\n",
			mvmsta->tid_data[tid].state);
		return -ENXIO;
	}

	FUNC10(&mvm->mutex);

	if (mvmsta->tid_data[tid].txq_id == IWL_MVM_INVALID_QUEUE &&
	    FUNC7(mvm)) {
		u8 ac = tid_to_mac80211_ac[tid];

		ret = FUNC8(mvm, sta, ac, tid);
		if (ret)
			return ret;
	}

	FUNC11(&mvmsta->lock);

	/*
	 * Note the possible cases:
	 *  1. An enabled TXQ - TXQ needs to become agg'ed
	 *  2. The TXQ hasn't yet been enabled, so find a free one and mark
	 *	it as reserved
	 */
	txq_id = mvmsta->tid_data[tid].txq_id;
	if (txq_id == IWL_MVM_INVALID_QUEUE) {
		ret = FUNC6(mvm, mvmsta->sta_id,
					      IWL_MVM_DQA_MIN_DATA_QUEUE,
					      IWL_MVM_DQA_MAX_DATA_QUEUE);
		if (ret < 0) {
			FUNC2(mvm, "Failed to allocate agg queue\n");
			goto out;
		}

		txq_id = ret;

		/* TXQ hasn't yet been enabled, so mark it only as reserved */
		mvm->queue_info[txq_id].status = IWL_MVM_QUEUE_RESERVED;
	} else if (FUNC3(txq_id >= IWL_MAX_HW_QUEUES)) {
		ret = -ENXIO;
		FUNC2(mvm, "tid_id %d out of range (0, %d)!\n",
			tid, IWL_MAX_HW_QUEUES - 1);
		goto out;

	} else if (FUNC13(mvm->queue_info[txq_id].status ==
			    IWL_MVM_QUEUE_SHARED)) {
		ret = -ENXIO;
		FUNC1(mvm,
				    "Can't start tid %d agg on shared queue!\n",
				    tid);
		goto out;
	}

	FUNC1(mvm,
			    "AGG for tid %d will be on queue #%d\n",
			    tid, txq_id);

	tid_data = &mvmsta->tid_data[tid];
	tid_data->ssn = FUNC0(tid_data->seq_number);
	tid_data->txq_id = txq_id;
	*ssn = tid_data->ssn;

	FUNC1(mvm,
			    "Start AGG: sta %d tid %d queue %d - ssn = %d, next_recl = %d\n",
			    mvmsta->sta_id, tid, txq_id, tid_data->ssn,
			    tid_data->next_reclaimed);

	/*
	 * In 22000 HW, the next_reclaimed index is only 8 bit, so we'll need
	 * to align the wrap around of ssn so we compare relevant values.
	 */
	normalized_ssn = tid_data->ssn;
	if (mvm->trans->trans_cfg->gen2)
		normalized_ssn &= 0xff;

	if (normalized_ssn == tid_data->next_reclaimed) {
		tid_data->state = IWL_AGG_STARTING;
		FUNC5(vif, sta->addr, tid);
	} else {
		tid_data->state = IWL_EMPTYING_HW_QUEUE_ADDBA;
	}

	ret = 0;

out:
	FUNC12(&mvmsta->lock);

	return ret;
}