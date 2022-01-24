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
typedef  int u32 ;
struct iwl_mvm {int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int type; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_bss_conf {int /*<<< orphan*/  idle; } ;

/* Variables and functions */
 int BSS_CHANGED_IDLE ; 
 int BSS_CHANGED_MU_GROUPS ; 
 struct iwl_mvm* FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  IWL_MVM_SCAN_SCHED ; 
#define  NL80211_IFTYPE_ADHOC 131 
#define  NL80211_IFTYPE_AP 130 
#define  NL80211_IFTYPE_MONITOR 129 
#define  NL80211_IFTYPE_STATION 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_bss_conf*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_bss_conf*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_mvm*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct ieee80211_hw *hw,
				     struct ieee80211_vif *vif,
				     struct ieee80211_bss_conf *bss_conf,
				     u32 changes)
{
	struct iwl_mvm *mvm = FUNC0(hw);

	FUNC6(&mvm->mutex);

	if (changes & BSS_CHANGED_IDLE && !bss_conf->idle)
		FUNC4(mvm, IWL_MVM_SCAN_SCHED, true);

	switch (vif->type) {
	case NL80211_IFTYPE_STATION:
		FUNC3(mvm, vif, bss_conf, changes);
		break;
	case NL80211_IFTYPE_AP:
	case NL80211_IFTYPE_ADHOC:
		FUNC2(mvm, vif, bss_conf, changes);
		break;
	case NL80211_IFTYPE_MONITOR:
		if (changes & BSS_CHANGED_MU_GROUPS)
			FUNC5(mvm, vif);
		break;
	default:
		/* shouldn't happen */
		FUNC1(1);
	}

	FUNC7(&mvm->mutex);
}