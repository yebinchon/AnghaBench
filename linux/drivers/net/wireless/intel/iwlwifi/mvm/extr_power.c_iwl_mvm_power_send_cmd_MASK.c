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
struct TYPE_3__ {scalar_t__ cur_fw_img; } ;
struct iwl_mvm {TYPE_1__ fwrt; } ;
struct iwl_mac_power_cmd {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_4__ {int /*<<< orphan*/  mac_pwr_cmd; } ;

/* Variables and functions */
 scalar_t__ IWL_UCODE_WOWLAN ; 
 int /*<<< orphan*/  MAC_PM_POWER_TABLE ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,struct ieee80211_vif*,struct iwl_mac_power_cmd*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,struct iwl_mac_power_cmd*) ; 
 int FUNC2 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwl_mac_power_cmd*) ; 
 TYPE_2__* FUNC3 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct iwl_mac_power_cmd*,int) ; 

__attribute__((used)) static int FUNC5(struct iwl_mvm *mvm,
					 struct ieee80211_vif *vif)
{
	struct iwl_mac_power_cmd cmd = {};

	FUNC0(mvm, vif, &cmd,
				mvm->fwrt.cur_fw_img != IWL_UCODE_WOWLAN);
	FUNC1(mvm, &cmd);
#ifdef CONFIG_IWLWIFI_DEBUGFS
	memcpy(&iwl_mvm_vif_from_mac80211(vif)->mac_pwr_cmd, &cmd, sizeof(cmd));
#endif

	return FUNC2(mvm, MAC_PM_POWER_TABLE, 0,
				    sizeof(cmd), &cmd);
}