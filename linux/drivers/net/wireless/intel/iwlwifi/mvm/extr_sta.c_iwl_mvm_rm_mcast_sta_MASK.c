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
struct iwl_mvm_vif {TYPE_1__ mcast_sta; int /*<<< orphan*/  cab_queue; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct iwl_mvm*,int /*<<< orphan*/ ) ; 
 struct iwl_mvm_vif* FUNC4 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct iwl_mvm *mvm, struct ieee80211_vif *vif)
{
	struct iwl_mvm_vif *mvmvif = FUNC4(vif);
	int ret;

	FUNC5(&mvm->mutex);

	FUNC2(mvm, &mvmvif->mcast_sta, true, 0);

	FUNC1(mvm, NULL, mvmvif->cab_queue, 0, 0);

	ret = FUNC3(mvm, mvmvif->mcast_sta.sta_id);
	if (ret)
		FUNC0(mvm, "Failed sending remove station\n");

	return ret;
}