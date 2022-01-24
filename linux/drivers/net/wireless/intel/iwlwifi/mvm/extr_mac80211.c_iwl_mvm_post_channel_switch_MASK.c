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
struct iwl_mvm_vif {int csa_failed; int csa_bcn_pending; int ps_disabled; int /*<<< orphan*/  ap_sta_id; } ;
struct iwl_mvm_sta {int dummy; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; TYPE_1__* fw; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ucode_capa; } ;

/* Variables and functions */
 int EIO ; 
 struct iwl_mvm* FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  IWL_UCODE_TLV_CAPA_CHANNEL_SWITCH_CMD ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct iwl_mvm*,struct ieee80211_vif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_mvm*,struct ieee80211_vif*,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct iwl_mvm*) ; 
 struct iwl_mvm_sta* FUNC6 (struct iwl_mvm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_mvm*,struct iwl_mvm_sta*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 struct iwl_mvm_vif* FUNC9 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct ieee80211_hw *hw,
				       struct ieee80211_vif *vif)
{
	struct iwl_mvm_vif *mvmvif = FUNC9(vif);
	struct iwl_mvm *mvm = FUNC0(hw);
	int ret;

	FUNC10(&mvm->mutex);

	if (mvmvif->csa_failed) {
		mvmvif->csa_failed = false;
		ret = -EIO;
		goto out_unlock;
	}

	if (vif->type == NL80211_IFTYPE_STATION) {
		struct iwl_mvm_sta *mvmsta;

		mvmvif->csa_bcn_pending = false;
		mvmsta = FUNC6(mvm,
							  mvmvif->ap_sta_id);

		if (FUNC1(!mvmsta)) {
			ret = -EIO;
			goto out_unlock;
		}

		if (!FUNC2(&mvm->fw->ucode_capa,
				 IWL_UCODE_TLV_CAPA_CHANNEL_SWITCH_CMD))
			FUNC7(mvm, mvmsta, false);

		FUNC4(mvm, vif, false, NULL);

		if (!FUNC2(&mvm->fw->ucode_capa,
				 IWL_UCODE_TLV_CAPA_CHANNEL_SWITCH_CMD)) {
			ret = FUNC3(mvm, vif, 0);
			if (ret)
				goto out_unlock;

			FUNC8(mvm, vif);
		}
	}

	mvmvif->ps_disabled = false;

	ret = FUNC5(mvm);

out_unlock:
	FUNC11(&mvm->mutex);

	return ret;
}