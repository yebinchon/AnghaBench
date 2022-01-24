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
typedef  scalar_t__ u32 ;
struct iwl_mvm_time_event_data {scalar_t__ id; } ;
struct iwl_mvm_vif {struct iwl_mvm_time_event_data time_event_data; } ;
struct iwl_mvm {int /*<<< orphan*/  time_event_lock; int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,scalar_t__) ; 
 scalar_t__ TE_BSS_STA_AGGRESSIVE_ASSOC ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,struct iwl_mvm_vif*,struct iwl_mvm_time_event_data*) ; 
 struct iwl_mvm_vif* FUNC2 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct iwl_mvm *mvm,
				     struct ieee80211_vif *vif)
{
	struct iwl_mvm_vif *mvmvif = FUNC2(vif);
	struct iwl_mvm_time_event_data *te_data = &mvmvif->time_event_data;
	u32 id;

	FUNC3(&mvm->mutex);

	FUNC4(&mvm->time_event_lock);
	id = te_data->id;
	FUNC5(&mvm->time_event_lock);

	if (id != TE_BSS_STA_AGGRESSIVE_ASSOC) {
		FUNC0(mvm,
			     "don't remove TE with id=%u (not session protection)\n",
			     id);
		return;
	}

	FUNC1(mvm, mvmvif, te_data);
}