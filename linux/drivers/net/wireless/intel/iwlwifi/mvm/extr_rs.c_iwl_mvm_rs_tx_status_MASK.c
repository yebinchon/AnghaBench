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
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {TYPE_1__ pers; } ;
struct TYPE_6__ {TYPE_2__ rs_drv; } ;
struct iwl_mvm_sta {TYPE_3__ lq_sta; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_tx_info {int dummy; } ;
struct ieee80211_sta {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,struct ieee80211_sta*,int,struct ieee80211_tx_info*,int) ; 
 struct iwl_mvm_sta* FUNC1 (struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct iwl_mvm *mvm, struct ieee80211_sta *sta,
			  int tid, struct ieee80211_tx_info *info, bool ndp)
{
	struct iwl_mvm_sta *mvmsta = FUNC1(sta);

	/* If it's locked we are in middle of init flow
	 * just wait for next tx status to update the lq_sta data
	 */
	if (!FUNC2(&mvmsta->lq_sta.rs_drv.pers.lock))
		return;

	FUNC0(mvm, sta, tid, info, ndp);
	FUNC3(&mvmsta->lq_sta.rs_drv.pers.lock);
}