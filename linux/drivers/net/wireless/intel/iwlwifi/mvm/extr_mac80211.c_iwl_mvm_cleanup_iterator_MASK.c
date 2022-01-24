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
typedef  int /*<<< orphan*/  u8 ;
struct iwl_mvm_vif {int uploaded; int /*<<< orphan*/  probe_resp_data; int /*<<< orphan*/  bf_data; int /*<<< orphan*/ * phy_ctxt; int /*<<< orphan*/  time_event_data; int /*<<< orphan*/  ap_sta_id; } ;
struct iwl_mvm {int /*<<< orphan*/  time_event_lock; } ;
struct ieee80211_vif {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IWL_MVM_INVALID_STA ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,int /*<<< orphan*/ *) ; 
 struct iwl_mvm_vif* FUNC1 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void *data, u8 *mac,
				     struct ieee80211_vif *vif)
{
	struct iwl_mvm *mvm = data;
	struct iwl_mvm_vif *mvmvif = FUNC1(vif);

	mvmvif->uploaded = false;
	mvmvif->ap_sta_id = IWL_MVM_INVALID_STA;

	FUNC3(&mvm->time_event_lock);
	FUNC0(mvm, &mvmvif->time_event_data);
	FUNC4(&mvm->time_event_lock);

	mvmvif->phy_ctxt = NULL;
	FUNC2(&mvmvif->bf_data, 0, sizeof(mvmvif->bf_data));
	FUNC2(&mvmvif->probe_resp_data, 0, sizeof(mvmvif->probe_resp_data));
}