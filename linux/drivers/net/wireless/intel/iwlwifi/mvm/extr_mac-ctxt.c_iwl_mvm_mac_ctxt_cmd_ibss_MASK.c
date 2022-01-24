#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct iwl_mvm_vif {int id; } ;
struct iwl_mvm {int dummy; } ;
struct TYPE_4__ {void* beacon_template; void* bi; } ;
struct iwl_mac_ctx_cmd {TYPE_2__ ibss; void* filter_flags; } ;
struct TYPE_3__ {int beacon_int; } ;
struct ieee80211_vif {scalar_t__ type; TYPE_1__ bss_conf; } ;

/* Variables and functions */
 int MAC_FILTER_ACCEPT_GRP ; 
 int MAC_FILTER_IN_BEACON ; 
 int MAC_FILTER_IN_PROBE_REQUEST ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,struct ieee80211_vif*,struct iwl_mac_ctx_cmd*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct iwl_mvm*,struct iwl_mac_ctx_cmd*) ; 
 struct iwl_mvm_vif* FUNC4 (struct ieee80211_vif*) ; 

__attribute__((used)) static int FUNC5(struct iwl_mvm *mvm,
				     struct ieee80211_vif *vif,
				     u32 action)
{
	struct iwl_mvm_vif *mvmvif = FUNC4(vif);
	struct iwl_mac_ctx_cmd cmd = {};

	FUNC0(vif->type != NL80211_IFTYPE_ADHOC);

	FUNC2(mvm, vif, &cmd, NULL, action);

	cmd.filter_flags = FUNC1(MAC_FILTER_IN_BEACON |
				       MAC_FILTER_IN_PROBE_REQUEST |
				       MAC_FILTER_ACCEPT_GRP);

	/* cmd.ibss.beacon_time/cmd.ibss.beacon_tsf are curently ignored */
	cmd.ibss.bi = FUNC1(vif->bss_conf.beacon_int);

	/* TODO: Assumes that the beacon id == mac context id */
	cmd.ibss.beacon_template = FUNC1(mvmvif->id);

	return FUNC3(mvm, &cmd);
}