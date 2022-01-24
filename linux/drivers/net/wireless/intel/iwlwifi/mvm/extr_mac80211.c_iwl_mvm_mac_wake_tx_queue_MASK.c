#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct iwl_mvm_txq {scalar_t__ txq_id; int /*<<< orphan*/  list; } ;
struct iwl_mvm {int /*<<< orphan*/  add_stream_wk; int /*<<< orphan*/  add_stream_txqs; } ;
struct ieee80211_txq {scalar_t__ sta; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 struct iwl_mvm* FUNC0 (struct ieee80211_hw*) ; 
 scalar_t__ IWL_MVM_INVALID_QUEUE ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,struct ieee80211_txq*) ; 
 struct iwl_mvm_txq* FUNC2 (struct ieee80211_txq*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct ieee80211_hw *hw,
				      struct ieee80211_txq *txq)
{
	struct iwl_mvm *mvm = FUNC0(hw);
	struct iwl_mvm_txq *mvmtxq = FUNC2(txq);

	/*
	 * Please note that racing is handled very carefully here:
	 * mvmtxq->txq_id is updated during allocation, and mvmtxq->list is
	 * deleted afterwards.
	 * This means that if:
	 * mvmtxq->txq_id != INVALID_QUEUE && list_empty(&mvmtxq->list):
	 *	queue is allocated and we can TX.
	 * mvmtxq->txq_id != INVALID_QUEUE && !list_empty(&mvmtxq->list):
	 *	a race, should defer the frame.
	 * mvmtxq->txq_id == INVALID_QUEUE && list_empty(&mvmtxq->list):
	 *	need to allocate the queue and defer the frame.
	 * mvmtxq->txq_id == INVALID_QUEUE && !list_empty(&mvmtxq->list):
	 *	queue is already scheduled for allocation, no need to allocate,
	 *	should defer the frame.
	 */

	/* If the queue is allocated TX and return. */
	if (!txq->sta || mvmtxq->txq_id != IWL_MVM_INVALID_QUEUE) {
		/*
		 * Check that list is empty to avoid a race where txq_id is
		 * already updated, but the queue allocation work wasn't
		 * finished
		 */
		if (FUNC6(txq->sta && !FUNC4(&mvmtxq->list)))
			return;

		FUNC1(hw, txq);
		return;
	}

	/* The list is being deleted only after the queue is fully allocated. */
	if (!FUNC4(&mvmtxq->list))
		return;

	FUNC3(&mvmtxq->list, &mvm->add_stream_txqs);
	FUNC5(&mvm->add_stream_wk);
}