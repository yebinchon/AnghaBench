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
struct iwl_mvm_sta {int /*<<< orphan*/  vif; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * fw_id_to_mac_id; } ;
struct ieee80211_sta {int /*<<< orphan*/  addr; int /*<<< orphan*/  tdls; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct ieee80211_sta*) ; 
 int /*<<< orphan*/  NL80211_TDLS_TEARDOWN ; 
 int /*<<< orphan*/  WLAN_REASON_TDLS_TEARDOWN_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iwl_mvm_sta* FUNC3 (struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct ieee80211_sta* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(struct iwl_mvm *mvm)
{
	struct ieee80211_sta *sta;
	struct iwl_mvm_sta *mvmsta;
	int i;

	FUNC4(&mvm->mutex);

	for (i = 0; i < FUNC0(mvm->fw_id_to_mac_id); i++) {
		sta = FUNC6(mvm->fw_id_to_mac_id[i],
						FUNC5(&mvm->mutex));
		if (!sta || FUNC1(sta) || !sta->tdls)
			continue;

		mvmsta = FUNC3(sta);
		FUNC2(mvmsta->vif, sta->addr,
				NL80211_TDLS_TEARDOWN,
				WLAN_REASON_TDLS_TEARDOWN_UNSPECIFIED,
				GFP_KERNEL);
	}
}