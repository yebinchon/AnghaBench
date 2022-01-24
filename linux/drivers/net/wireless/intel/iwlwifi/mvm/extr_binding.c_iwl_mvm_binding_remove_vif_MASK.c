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
struct iwl_mvm_vif {int /*<<< orphan*/  phy_ctxt; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_vif {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct iwl_mvm*,struct ieee80211_vif*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct iwl_mvm*,struct ieee80211_vif*,int) ; 
 struct iwl_mvm_vif* FUNC4 (struct ieee80211_vif*) ; 

int FUNC5(struct iwl_mvm *mvm, struct ieee80211_vif *vif)
{
	struct iwl_mvm_vif *mvmvif = FUNC4(vif);
	int ret;

	if (FUNC1(!mvmvif->phy_ctxt))
		return -EINVAL;

	ret = FUNC2(mvm, vif, mvmvif->phy_ctxt, false);

	if (!ret)
		if (FUNC3(mvm, vif, true))
			FUNC0(mvm, "Failed to update SF state\n");

	return ret;
}