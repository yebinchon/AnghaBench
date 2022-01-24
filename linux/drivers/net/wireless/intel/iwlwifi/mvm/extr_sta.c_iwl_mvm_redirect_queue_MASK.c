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
struct iwl_scd_txq_cfg_cmd {int scd_queue; int tid; int /*<<< orphan*/  sta_id; int /*<<< orphan*/  tx_fifo; int /*<<< orphan*/  action; } ;
struct iwl_mvm_txq {int stopped; } ;
struct iwl_mvm {int /*<<< orphan*/  trans; TYPE_1__* queue_info; } ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_2__ {int mac80211_ac; int txq_tid; int /*<<< orphan*/  tid_bitmap; int /*<<< orphan*/  ra_sta_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,char*,int,...) ; 
 int /*<<< orphan*/  IWL_FRAME_LIMIT ; 
 int /*<<< orphan*/  SCD_CFG_DISABLE_QUEUE ; 
 int /*<<< orphan*/  SCD_QUEUE_CFG ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * iwl_mvm_ac_to_tx_fifo ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_mvm*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwl_scd_txq_cfg_cmd*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct iwl_mvm *mvm, int queue, int tid,
				  int ac, int ssn, unsigned int wdg_timeout,
				  bool force, struct iwl_mvm_txq *txq)
{
	struct iwl_scd_txq_cfg_cmd cmd = {
		.scd_queue = queue,
		.action = SCD_CFG_DISABLE_QUEUE,
	};
	bool shared_queue;
	int ret;

	if (FUNC3(FUNC5(mvm)))
		return -EINVAL;

	/*
	 * If the AC is lower than current one - FIFO needs to be redirected to
	 * the lowest one of the streams in the queue. Check if this is needed
	 * here.
	 * Notice that the enum ieee80211_ac_numbers is "flipped", so BK is with
	 * value 3 and VO with value 0, so to check if ac X is lower than ac Y
	 * we need to check if the numerical value of X is LARGER than of Y.
	 */
	if (ac <= mvm->queue_info[queue].mac80211_ac && !force) {
		FUNC1(mvm,
				    "No redirection needed on TXQ #%d\n",
				    queue);
		return 0;
	}

	cmd.sta_id = mvm->queue_info[queue].ra_sta_id;
	cmd.tx_fifo = iwl_mvm_ac_to_tx_fifo[mvm->queue_info[queue].mac80211_ac];
	cmd.tid = mvm->queue_info[queue].txq_tid;
	shared_queue = FUNC4(mvm->queue_info[queue].tid_bitmap) > 1;

	FUNC1(mvm, "Redirecting TXQ #%d to FIFO #%d\n",
			    queue, iwl_mvm_ac_to_tx_fifo[ac]);

	/* Stop the queue and wait for it to empty */
	txq->stopped = true;

	ret = FUNC11(mvm->trans, FUNC0(queue));
	if (ret) {
		FUNC2(mvm, "Error draining queue %d before reconfig\n",
			queue);
		ret = -EIO;
		goto out;
	}

	/* Before redirecting the queue we need to de-activate it */
	FUNC8(mvm->trans, queue, false);
	ret = FUNC7(mvm, SCD_QUEUE_CFG, 0, sizeof(cmd), &cmd);
	if (ret)
		FUNC2(mvm, "Failed SCD disable TXQ %d (ret=%d)\n", queue,
			ret);

	/* Make sure the SCD wrptr is correctly set before reconfiguring */
	FUNC9(mvm->trans, queue, ssn, NULL, wdg_timeout);

	/* Update the TID "owner" of the queue */
	mvm->queue_info[queue].txq_tid = tid;

	/* TODO: Work-around SCD bug when moving back by multiples of 0x40 */

	/* Redirect to lower AC */
	FUNC6(mvm, queue, iwl_mvm_ac_to_tx_fifo[ac],
			     cmd.sta_id, tid, IWL_FRAME_LIMIT, ssn);

	/* Update AC marking of the queue */
	mvm->queue_info[queue].mac80211_ac = ac;

	/*
	 * Mark queue as shared in transport if shared
	 * Note this has to be done after queue enablement because enablement
	 * can also set this value, and there is no indication there to shared
	 * queues
	 */
	if (shared_queue)
		FUNC10(mvm->trans, queue, true);

out:
	/* Continue using the queue */
	txq->stopped = false;

	return ret;
}