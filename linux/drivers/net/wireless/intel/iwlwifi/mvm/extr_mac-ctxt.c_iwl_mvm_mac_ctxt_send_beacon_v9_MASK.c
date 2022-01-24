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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct iwl_mvm_vif {scalar_t__ id; } ;
struct iwl_mvm {int dummy; } ;
struct iwl_mac_beacon_cmd {void* ecsa_offset; void* csa_offset; int /*<<< orphan*/  tim_size; int /*<<< orphan*/  tim_idx; void* template_id; void* byte_cnt; void* flags; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_tx_info {int dummy; } ;
typedef  int /*<<< orphan*/  beacon_cmd ;

/* Variables and functions */
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 scalar_t__ IWL_FIRST_CCK_RATE ; 
 int /*<<< orphan*/  IWL_MAC_BEACON_CCK ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  WLAN_EID_CHANNEL_SWITCH ; 
 int /*<<< orphan*/  WLAN_EID_EXT_CHANSWITCH_ANN ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (struct ieee80211_tx_info*,struct ieee80211_vif*) ; 
 int FUNC6 (struct iwl_mvm*,struct sk_buff*,struct iwl_mac_beacon_cmd*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_mvm*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 struct iwl_mvm_vif* FUNC8 (struct ieee80211_vif*) ; 

__attribute__((used)) static int FUNC9(struct iwl_mvm *mvm,
					   struct ieee80211_vif *vif,
					   struct sk_buff *beacon)
{
	struct iwl_mvm_vif *mvmvif = FUNC8(vif);
	struct ieee80211_tx_info *info = FUNC0(beacon);
	struct iwl_mac_beacon_cmd beacon_cmd = {};
	u8 rate = FUNC5(info, vif);
	u16 flags;

	flags = FUNC4(rate);

	if (rate == IWL_FIRST_CCK_RATE)
		flags |= IWL_MAC_BEACON_CCK;

	beacon_cmd.flags = FUNC1(flags);
	beacon_cmd.byte_cnt = FUNC1((u16)beacon->len);
	beacon_cmd.template_id = FUNC2((u32)mvmvif->id);

	if (vif->type == NL80211_IFTYPE_AP)
		FUNC7(mvm, &beacon_cmd.tim_idx,
					 &beacon_cmd.tim_size,
					 beacon->data, beacon->len);

	beacon_cmd.csa_offset =
		FUNC2(FUNC3(beacon->data,
						   WLAN_EID_CHANNEL_SWITCH,
						   beacon->len));
	beacon_cmd.ecsa_offset =
		FUNC2(FUNC3(beacon->data,
						   WLAN_EID_EXT_CHANSWITCH_ANN,
						   beacon->len));

	return FUNC6(mvm, beacon, &beacon_cmd,
						sizeof(beacon_cmd));
}