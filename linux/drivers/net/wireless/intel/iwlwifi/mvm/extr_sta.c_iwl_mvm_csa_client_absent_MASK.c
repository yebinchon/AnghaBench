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
struct iwl_mvm_vif {int /*<<< orphan*/  ap_sta_id; } ;
struct iwl_mvm_sta {int dummy; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_vif {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct iwl_mvm_sta* FUNC1 (struct iwl_mvm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,struct iwl_mvm_sta*,int) ; 
 struct iwl_mvm_vif* FUNC3 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(struct iwl_mvm *mvm, struct ieee80211_vif *vif)
{
	struct iwl_mvm_vif *mvmvif = FUNC3(vif);
	struct iwl_mvm_sta *mvmsta;

	FUNC4();

	mvmsta = FUNC1(mvm, mvmvif->ap_sta_id);

	if (!FUNC0(!mvmsta))
		FUNC2(mvm, mvmsta, true);

	FUNC5();
}