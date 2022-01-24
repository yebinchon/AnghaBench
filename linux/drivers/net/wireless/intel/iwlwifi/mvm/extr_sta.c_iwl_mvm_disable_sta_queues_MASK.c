#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct iwl_mvm_txq {scalar_t__ txq_id; } ;
struct iwl_mvm_sta {TYPE_1__* tid_data; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {TYPE_1__* txq; } ;
struct TYPE_3__ {scalar_t__ txq_id; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ IWL_MVM_INVALID_QUEUE ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,struct ieee80211_sta*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 struct iwl_mvm_sta* FUNC2 (struct ieee80211_sta*) ; 
 struct iwl_mvm_txq* FUNC3 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct iwl_mvm *mvm,
				       struct ieee80211_vif *vif,
				       struct ieee80211_sta *sta)
{
	struct iwl_mvm_sta *mvm_sta = FUNC2(sta);
	int i;

	FUNC4(&mvm->mutex);

	for (i = 0; i < FUNC0(mvm_sta->tid_data); i++) {
		if (mvm_sta->tid_data[i].txq_id == IWL_MVM_INVALID_QUEUE)
			continue;

		FUNC1(mvm, sta, mvm_sta->tid_data[i].txq_id, i,
				    0);
		mvm_sta->tid_data[i].txq_id = IWL_MVM_INVALID_QUEUE;
	}

	for (i = 0; i < FUNC0(sta->txq); i++) {
		struct iwl_mvm_txq *mvmtxq =
			FUNC3(sta->txq[i]);

		mvmtxq->txq_id = IWL_MVM_INVALID_QUEUE;
	}
}