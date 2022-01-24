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
struct iwl_mvm_int_sta {int dummy; } ;
struct iwl_mvm_vif {struct iwl_mvm_int_sta bcast_sta; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,struct iwl_mvm_int_sta*) ; 
 int FUNC2 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 struct iwl_mvm_vif* FUNC3 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct iwl_mvm *mvm, struct ieee80211_vif *vif)
{
	struct iwl_mvm_vif *mvmvif = FUNC3(vif);
	struct iwl_mvm_int_sta *bsta = &mvmvif->bcast_sta;
	int ret;

	FUNC4(&mvm->mutex);

	ret = FUNC0(mvm, vif);
	if (ret)
		return ret;

	ret = FUNC2(mvm, vif);

	if (ret)
		FUNC1(mvm, bsta);

	return ret;
}