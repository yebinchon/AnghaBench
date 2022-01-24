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
struct iwl_mvm_vif {int dummy; } ;
struct iwl_mvm_time_event_data {TYPE_1__* vif; } ;
struct iwl_mvm {int /*<<< orphan*/  status; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  IWL_MVM_STATUS_NEED_FLUSH_P2P ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*) ; 
 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ; 
 struct iwl_mvm_time_event_data* FUNC1 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,struct iwl_mvm_vif*,struct iwl_mvm_time_event_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*,struct iwl_mvm_vif*,struct iwl_mvm_time_event_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_mvm*) ; 
 struct iwl_mvm_vif* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(struct iwl_mvm *mvm)
{
	struct iwl_mvm_vif *mvmvif;
	struct iwl_mvm_time_event_data *te_data;

	te_data = FUNC1(mvm);
	if (!te_data) {
		FUNC0(mvm, "No remain on channel event\n");
		return;
	}

	mvmvif = FUNC5(te_data->vif);

	if (te_data->vif->type == NL80211_IFTYPE_P2P_DEVICE) {
		FUNC3(mvm, mvmvif, te_data);
		FUNC6(IWL_MVM_STATUS_NEED_FLUSH_P2P, &mvm->status);
	} else {
		FUNC2(mvm, mvmvif, te_data);
	}

	FUNC4(mvm);
}