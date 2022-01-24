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
struct iwl_time_event_notif {int /*<<< orphan*/  status; } ;
struct iwl_mvm_vif {int csa_failed; int /*<<< orphan*/  csa_work; } ;
struct iwl_mvm_time_event_data {struct ieee80211_vif* vif; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_vif {int type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*) ; 
#define  NL80211_IFTYPE_AP 129 
#define  NL80211_IFTYPE_STATION 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_vif*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_mvm*,struct ieee80211_vif*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_mvm*,struct iwl_mvm_time_event_data*) ; 
 struct iwl_mvm_vif* FUNC8 (struct ieee80211_vif*) ; 

__attribute__((used)) static void
FUNC9(struct iwl_mvm *mvm,
			     struct iwl_mvm_time_event_data *te_data,
			     struct iwl_time_event_notif *notif)
{
	struct ieee80211_vif *vif = te_data->vif;
	struct iwl_mvm_vif *mvmvif = FUNC8(vif);

	if (!notif->status)
		FUNC0(mvm, "CSA time event failed to start\n");

	switch (te_data->vif->type) {
	case NL80211_IFTYPE_AP:
		if (!notif->status)
			mvmvif->csa_failed = true;
		FUNC6(mvm);
		break;
	case NL80211_IFTYPE_STATION:
		if (!notif->status) {
			FUNC4(mvm, vif,
						"CSA TE failed to start");
			break;
		}
		FUNC5(mvm, te_data->vif);
		FUNC2(&mvmvif->csa_work);
		FUNC3(te_data->vif, true);
		break;
	default:
		/* should never happen */
		FUNC1(1);
		break;
	}

	/* we don't need it anymore */
	FUNC7(mvm, te_data);
}