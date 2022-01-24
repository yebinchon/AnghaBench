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
struct iwl_wowlan_config_cmd {int /*<<< orphan*/  offloading_tid; } ;
struct iwl_mvm_vif {int dummy; } ;
struct iwl_mvm {TYPE_1__* fw; int /*<<< orphan*/  mutex; int /*<<< orphan*/  offload_tid; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct cfg80211_wowlan {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  swcrypto; } ;
struct TYPE_3__ {int /*<<< orphan*/  ucode_capa; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ASYNC ; 
 int /*<<< orphan*/  IWL_UCODE_TLV_API_WOWLAN_TCP_SYN_WAKE ; 
 int /*<<< orphan*/  IWL_UCODE_TLV_CAPA_CNSLDTD_D3_D0_IMG ; 
 int /*<<< orphan*/  WOWLAN_CONFIGURATION ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_sta*) ; 
 int FUNC3 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwl_wowlan_config_cmd*) ; 
 int FUNC4 (struct iwl_mvm*,struct cfg80211_wowlan*) ; 
 int FUNC5 (struct iwl_mvm*,struct cfg80211_wowlan*) ; 
 int FUNC6 (struct iwl_mvm*,struct ieee80211_vif*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct iwl_mvm*) ; 
 int FUNC8 (struct iwl_mvm*,struct ieee80211_vif*,int /*<<< orphan*/ ) ; 
 TYPE_2__ iwlwifi_mod_params ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(struct iwl_mvm *mvm,
		      struct cfg80211_wowlan *wowlan,
		      struct iwl_wowlan_config_cmd *wowlan_config_cmd,
		      struct ieee80211_vif *vif, struct iwl_mvm_vif *mvmvif,
		      struct ieee80211_sta *ap_sta)
{
	int ret;
	bool unified_image = FUNC1(&mvm->fw->ucode_capa,
					 IWL_UCODE_TLV_CAPA_CNSLDTD_D3_D0_IMG);

	mvm->offload_tid = wowlan_config_cmd->offloading_tid;

	if (!unified_image) {
		ret = FUNC7(mvm);
		if (ret)
			return ret;

		ret = FUNC2(mvm, vif, ap_sta);
		if (ret)
			return ret;
	}

	if (!iwlwifi_mod_params.swcrypto) {
		/*
		 * This needs to be unlocked due to lock ordering
		 * constraints. Since we're in the suspend path
		 * that isn't really a problem though.
		 */
		FUNC10(&mvm->mutex);
		ret = FUNC8(mvm, vif, CMD_ASYNC);
		FUNC9(&mvm->mutex);
		if (ret)
			return ret;
	}

	ret = FUNC3(mvm, WOWLAN_CONFIGURATION, 0,
				   sizeof(*wowlan_config_cmd),
				   wowlan_config_cmd);
	if (ret)
		return ret;

	if (FUNC0(&mvm->fw->ucode_capa,
		       IWL_UCODE_TLV_API_WOWLAN_TCP_SYN_WAKE))
		ret = FUNC4(mvm, wowlan);
	else
		ret = FUNC5(mvm, wowlan);
	if (ret)
		return ret;

	return FUNC6(mvm, vif, false, true, 0);
}