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
typedef  size_t u16 ;
struct iwl_trans_txq_scd_cfg {size_t tid; size_t frame_limit; int aggregate; int /*<<< orphan*/  fifo; int /*<<< orphan*/  sta_id; } ;
struct iwl_mvm_tid_data {size_t ssn; int txq_id; int amsdu_in_ampdu_allowed; int /*<<< orphan*/  state; } ;
struct TYPE_8__ {int /*<<< orphan*/  agg_frame_cnt_limit; } ;
struct TYPE_6__ {TYPE_4__ lq; } ;
struct TYPE_7__ {TYPE_2__ rs_drv; } ;
struct iwl_mvm_sta {TYPE_3__ lq_sta; int /*<<< orphan*/  max_agg_bufsize; int /*<<< orphan*/  sta_id; int /*<<< orphan*/  lock; int /*<<< orphan*/  agg_tids; struct iwl_mvm_tid_data* tid_data; } ;
struct iwl_mvm {TYPE_1__* queue_info; int /*<<< orphan*/  trans; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int /*<<< orphan*/  addr; int /*<<< orphan*/  tdls; } ;
typedef  enum iwl_mvm_queue_status { ____Placeholder_iwl_mvm_queue_status } iwl_mvm_queue_status ;
struct TYPE_5__ {int status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BITS_PER_BYTE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EINVAL ; 
 int EIO ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  IWL_AGG_ON ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*,char*,...) ; 
 size_t IWL_FRAME_LIMIT ; 
 int IWL_MAX_TID_COUNT ; 
 scalar_t__ IWL_MVM_QUEUE_READY ; 
 int IWL_MVM_QUEUE_SHARED ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * iwl_mvm_ac_to_tx_fifo ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_mvm*,struct ieee80211_sta*,int,size_t,struct iwl_trans_txq_scd_cfg*,unsigned int) ; 
 unsigned int FUNC6 (struct iwl_mvm*,struct ieee80211_vif*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_mvm*) ; 
 int FUNC9 (struct iwl_mvm*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,size_t,size_t) ; 
 int FUNC10 (struct iwl_mvm*,TYPE_4__*) ; 
 struct iwl_mvm_sta* FUNC11 (struct ieee80211_sta*) ; 
 int FUNC12 (struct iwl_mvm*,struct ieee80211_sta*,size_t,int,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 size_t* tid_to_mac80211_ac ; 

int FUNC17(struct iwl_mvm *mvm, struct ieee80211_vif *vif,
			    struct ieee80211_sta *sta, u16 tid, u16 buf_size,
			    bool amsdu)
{
	struct iwl_mvm_sta *mvmsta = FUNC11(sta);
	struct iwl_mvm_tid_data *tid_data = &mvmsta->tid_data[tid];
	unsigned int wdg_timeout =
		FUNC6(mvm, vif, sta->tdls, false);
	int queue, ret;
	bool alloc_queue = true;
	enum iwl_mvm_queue_status queue_status;
	u16 ssn;

	struct iwl_trans_txq_scd_cfg cfg = {
		.sta_id = mvmsta->sta_id,
		.tid = tid,
		.frame_limit = buf_size,
		.aggregate = true,
	};

	/*
	 * When FW supports TLC_OFFLOAD, it also implements Tx aggregation
	 * manager, so this function should never be called in this case.
	 */
	if (FUNC4(FUNC8(mvm)))
		return -EINVAL;

	FUNC1((sizeof(mvmsta->agg_tids) * BITS_PER_BYTE)
		     != IWL_MAX_TID_COUNT);

	FUNC15(&mvmsta->lock);
	ssn = tid_data->ssn;
	queue = tid_data->txq_id;
	tid_data->state = IWL_AGG_ON;
	mvmsta->agg_tids |= FUNC0(tid);
	tid_data->ssn = 0xffff;
	tid_data->amsdu_in_ampdu_allowed = amsdu;
	FUNC16(&mvmsta->lock);

	if (FUNC7(mvm)) {
		/*
		 * If there is no queue for this tid, iwl_mvm_sta_tx_agg_start()
		 * would have failed, so if we are here there is no need to
		 * allocate a queue.
		 * However, if aggregation size is different than the default
		 * size, the scheduler should be reconfigured.
		 * We cannot do this with the new TX API, so return unsupported
		 * for now, until it will be offloaded to firmware..
		 * Note that if SCD default value changes - this condition
		 * should be updated as well.
		 */
		if (buf_size < IWL_FRAME_LIMIT)
			return -ENOTSUPP;

		ret = FUNC12(mvm, sta, tid, queue, true);
		if (ret)
			return -EIO;
		goto out;
	}

	cfg.fifo = iwl_mvm_ac_to_tx_fifo[tid_to_mac80211_ac[tid]];

	queue_status = mvm->queue_info[queue].status;

	/* Maybe there is no need to even alloc a queue... */
	if (mvm->queue_info[queue].status == IWL_MVM_QUEUE_READY)
		alloc_queue = false;

	/*
	 * Only reconfig the SCD for the queue if the window size has
	 * changed from current (become smaller)
	 */
	if (!alloc_queue && buf_size < IWL_FRAME_LIMIT) {
		/*
		 * If reconfiguring an existing queue, it first must be
		 * drained
		 */
		ret = FUNC13(mvm->trans,
						     FUNC0(queue));
		if (ret) {
			FUNC3(mvm,
				"Error draining queue before reconfig\n");
			return ret;
		}

		ret = FUNC9(mvm, queue, cfg.fifo,
					   mvmsta->sta_id, tid,
					   buf_size, ssn);
		if (ret) {
			FUNC3(mvm,
				"Error reconfiguring TXQ #%d\n", queue);
			return ret;
		}
	}

	if (alloc_queue)
		FUNC5(mvm, sta, queue, ssn,
				   &cfg, wdg_timeout);

	/* Send ADD_STA command to enable aggs only if the queue isn't shared */
	if (queue_status != IWL_MVM_QUEUE_SHARED) {
		ret = FUNC12(mvm, sta, tid, queue, true);
		if (ret)
			return -EIO;
	}

	/* No need to mark as reserved */
	mvm->queue_info[queue].status = IWL_MVM_QUEUE_READY;

out:
	/*
	 * Even though in theory the peer could have different
	 * aggregation reorder buffer sizes for different sessions,
	 * our ucode doesn't allow for that and has a global limit
	 * for each station. Therefore, use the minimum of all the
	 * aggregation sessions and our default value.
	 */
	mvmsta->max_agg_bufsize =
		FUNC14(mvmsta->max_agg_bufsize, buf_size);
	mvmsta->lq_sta.rs_drv.lq.agg_frame_cnt_limit = mvmsta->max_agg_bufsize;

	FUNC2(mvm, "Tx aggregation enabled on ra = %pM tid = %d\n",
		     sta->addr, tid);

	return FUNC10(mvm, &mvmsta->lq_sta.rs_drv.lq);
}