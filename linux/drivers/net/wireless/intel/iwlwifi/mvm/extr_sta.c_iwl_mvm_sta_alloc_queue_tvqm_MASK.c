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
struct iwl_mvm_txq {int txq_id; } ;
struct iwl_mvm_sta {int /*<<< orphan*/  lock; TYPE_2__* tid_data; int /*<<< orphan*/  sta_id; int /*<<< orphan*/  vif; } ;
struct iwl_mvm {TYPE_1__* tvqm_info; int /*<<< orphan*/  mutex; } ;
struct ieee80211_sta {int dummy; } ;
struct TYPE_4__ {int txq_id; } ;
struct TYPE_3__ {int txq_tid; int /*<<< orphan*/  sta_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int,...) ; 
 unsigned int FUNC1 (struct iwl_mvm*,int /*<<< orphan*/ ,int,int) ; 
 struct iwl_mvm_sta* FUNC2 (struct ieee80211_sta*) ; 
 int FUNC3 (struct iwl_mvm*,int /*<<< orphan*/ ,int,unsigned int) ; 
 struct iwl_mvm_txq* FUNC4 (struct ieee80211_sta*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct iwl_mvm *mvm,
					struct ieee80211_sta *sta, u8 ac,
					int tid)
{
	struct iwl_mvm_sta *mvmsta = FUNC2(sta);
	struct iwl_mvm_txq *mvmtxq =
		FUNC4(sta, tid);
	unsigned int wdg_timeout =
		FUNC1(mvm, mvmsta->vif, false, false);
	int queue = -1;

	FUNC5(&mvm->mutex);

	FUNC0(mvm,
			    "Allocating queue for sta %d on tid %d\n",
			    mvmsta->sta_id, tid);
	queue = FUNC3(mvm, mvmsta->sta_id, tid, wdg_timeout);
	if (queue < 0)
		return queue;

	mvmtxq->txq_id = queue;
	mvm->tvqm_info[queue].txq_tid = tid;
	mvm->tvqm_info[queue].sta_id = mvmsta->sta_id;

	FUNC0(mvm, "Allocated queue is %d\n", queue);

	FUNC6(&mvmsta->lock);
	mvmsta->tid_data[tid].txq_id = queue;
	FUNC7(&mvmsta->lock);

	return 0;
}