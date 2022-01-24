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
struct iwl_mvm_sta {int disable_tx; int /*<<< orphan*/  lock; } ;
struct iwl_mvm {int /*<<< orphan*/  hw; } ;
struct ieee80211_sta {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ieee80211_sta*,int) ; 
 struct iwl_mvm_sta* FUNC1 (struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,struct iwl_mvm_sta*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct iwl_mvm *mvm,
				      struct ieee80211_sta *sta,
				      bool disable)
{
	struct iwl_mvm_sta *mvm_sta = FUNC1(sta);

	FUNC3(&mvm_sta->lock);

	if (mvm_sta->disable_tx == disable) {
		FUNC4(&mvm_sta->lock);
		return;
	}

	mvm_sta->disable_tx = disable;

	/* Tell mac80211 to start/stop queuing tx for this station */
	FUNC0(mvm->hw, sta, disable);

	FUNC2(mvm, mvm_sta, disable);

	FUNC4(&mvm_sta->lock);
}