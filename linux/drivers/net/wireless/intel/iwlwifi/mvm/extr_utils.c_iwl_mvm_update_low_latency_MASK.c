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
struct iwl_mvm_vif {int /*<<< orphan*/  id; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int dummy; } ;
typedef  enum iwl_mvm_low_latency_cause { ____Placeholder_iwl_mvm_low_latency_cause } iwl_mvm_low_latency_cause ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*) ; 
 int FUNC1 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct iwl_mvm*,int,int /*<<< orphan*/ *) ; 
 struct iwl_mvm_vif* FUNC4 (struct ieee80211_vif*) ; 
 int FUNC5 (struct iwl_mvm_vif*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_mvm_vif*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct iwl_mvm *mvm, struct ieee80211_vif *vif,
			       bool low_latency,
			       enum iwl_mvm_low_latency_cause cause)
{
	struct iwl_mvm_vif *mvmvif = FUNC4(vif);
	int res;
	bool prev;

	FUNC7(&mvm->mutex);

	prev = FUNC5(mvmvif);
	FUNC6(mvmvif, low_latency, cause);

	low_latency = FUNC5(mvmvif);

	if (low_latency == prev)
		return 0;

	FUNC2(mvm, low_latency, mvmvif->id);

	res = FUNC3(mvm, false, NULL);
	if (res)
		return res;

	FUNC0(mvm);

	return FUNC1(mvm);
}