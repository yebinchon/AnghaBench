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
struct TYPE_2__ {int /*<<< orphan*/  sta_id; } ;
struct iwl_mvm_vif {TYPE_1__ bcast_sta; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int FUNC2 (struct iwl_mvm*,int /*<<< orphan*/ ) ; 
 struct iwl_mvm_vif* FUNC3 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct iwl_mvm *mvm, struct ieee80211_vif *vif)
{
	struct iwl_mvm_vif *mvmvif = FUNC3(vif);
	int ret;

	FUNC4(&mvm->mutex);

	FUNC1(mvm, vif);

	ret = FUNC2(mvm, mvmvif->bcast_sta.sta_id);
	if (ret)
		FUNC0(mvm, "Failed sending remove station\n");
	return ret;
}