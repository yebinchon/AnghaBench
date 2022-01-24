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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct iwl_mvm_vif {scalar_t__ id; } ;
struct iwl_mvm {int dummy; } ;
struct iwl_mac_beacon_cmd_v7 {void* ecsa_offset; void* csa_offset; int /*<<< orphan*/  tim_size; int /*<<< orphan*/  tim_idx; void* template_id; int /*<<< orphan*/  tx; } ;
struct ieee80211_vif {scalar_t__ type; } ;
typedef  int /*<<< orphan*/  beacon_cmd ;

/* Variables and functions */
 scalar_t__ NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  WLAN_EID_CHANNEL_SWITCH ; 
 int /*<<< orphan*/  WLAN_EID_EXT_CHANSWITCH_ANN ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct iwl_mvm*,struct sk_buff*,struct iwl_mac_beacon_cmd_v7*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_mvm*,struct ieee80211_vif*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 struct iwl_mvm_vif* FUNC5 (struct ieee80211_vif*) ; 

__attribute__((used)) static int FUNC6(struct iwl_mvm *mvm,
					   struct ieee80211_vif *vif,
					   struct sk_buff *beacon)
{
	struct iwl_mvm_vif *mvmvif = FUNC5(vif);
	struct iwl_mac_beacon_cmd_v7 beacon_cmd = {};

	FUNC4(mvm, vif, beacon, &beacon_cmd.tx);

	beacon_cmd.template_id = FUNC0((u32)mvmvif->id);

	if (vif->type == NL80211_IFTYPE_AP)
		FUNC3(mvm, &beacon_cmd.tim_idx,
					 &beacon_cmd.tim_size,
					 beacon->data, beacon->len);

	beacon_cmd.csa_offset =
		FUNC0(FUNC1(beacon->data,
						   WLAN_EID_CHANNEL_SWITCH,
						   beacon->len));
	beacon_cmd.ecsa_offset =
		FUNC0(FUNC1(beacon->data,
						   WLAN_EID_EXT_CHANSWITCH_ANN,
						   beacon->len));

	return FUNC2(mvm, beacon, &beacon_cmd,
						sizeof(beacon_cmd));
}