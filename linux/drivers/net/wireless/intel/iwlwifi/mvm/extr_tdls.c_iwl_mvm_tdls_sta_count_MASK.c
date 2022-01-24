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
struct iwl_mvm_sta {struct ieee80211_vif* vif; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * fw_id_to_mac_id; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int /*<<< orphan*/  tdls; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct ieee80211_sta*) ; 
 struct iwl_mvm_sta* FUNC2 (struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct ieee80211_sta* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct iwl_mvm *mvm, struct ieee80211_vif *vif)
{
	struct ieee80211_sta *sta;
	struct iwl_mvm_sta *mvmsta;
	int count = 0;
	int i;

	FUNC3(&mvm->mutex);

	for (i = 0; i < FUNC0(mvm->fw_id_to_mac_id); i++) {
		sta = FUNC5(mvm->fw_id_to_mac_id[i],
						FUNC4(&mvm->mutex));
		if (!sta || FUNC1(sta) || !sta->tdls)
			continue;

		if (vif) {
			mvmsta = FUNC2(sta);
			if (mvmsta->vif != vif)
				continue;
		}

		count++;
	}

	return count;
}