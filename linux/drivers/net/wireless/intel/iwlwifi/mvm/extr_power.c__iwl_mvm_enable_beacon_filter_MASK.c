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
struct TYPE_3__ {int bf_enabled; } ;
struct iwl_mvm_vif {TYPE_1__ bf_data; } ;
struct iwl_mvm {struct iwl_mvm_vif* bf_allowed_vif; } ;
struct iwl_beacon_filter_cmd {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dtim_period; } ;
struct ieee80211_vif {scalar_t__ type; scalar_t__ p2p; TYPE_2__ bss_conf; } ;

/* Variables and functions */
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_vif*,struct iwl_beacon_filter_cmd*) ; 
 int FUNC1 (struct iwl_mvm*,struct iwl_beacon_filter_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,struct ieee80211_vif*,struct iwl_beacon_filter_cmd*) ; 
 struct iwl_mvm_vif* FUNC3 (struct ieee80211_vif*) ; 

__attribute__((used)) static int FUNC4(struct iwl_mvm *mvm,
					 struct ieee80211_vif *vif,
					 struct iwl_beacon_filter_cmd *cmd,
					 u32 cmd_flags)
{
	struct iwl_mvm_vif *mvmvif = FUNC3(vif);
	int ret;

	if (mvmvif != mvm->bf_allowed_vif || !vif->bss_conf.dtim_period ||
	    vif->type != NL80211_IFTYPE_STATION || vif->p2p)
		return 0;

	FUNC2(mvm, vif, cmd);
	FUNC0(vif, cmd);
	ret = FUNC1(mvm, cmd, cmd_flags);

	if (!ret)
		mvmvif->bf_data.bf_enabled = true;

	return ret;
}