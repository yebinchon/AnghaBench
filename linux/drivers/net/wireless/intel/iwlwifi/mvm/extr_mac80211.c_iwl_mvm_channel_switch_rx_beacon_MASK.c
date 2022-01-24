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
struct iwl_mvm_vif {scalar_t__ csa_count; int csa_misbehave; int /*<<< orphan*/  id; int /*<<< orphan*/  color; } ;
struct iwl_mvm {TYPE_1__* fw; } ;
struct iwl_chan_switch_te_cmd {scalar_t__ cs_count; scalar_t__ cs_mode; int /*<<< orphan*/  tsf; int /*<<< orphan*/  action; int /*<<< orphan*/  mac_id; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_channel_switch {scalar_t__ count; scalar_t__ block_tx; int /*<<< orphan*/  timestamp; } ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_2__ {int /*<<< orphan*/  ucode_capa; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHANNEL_SWITCH_TIME_EVENT_CMD ; 
 int /*<<< orphan*/  CMD_ASYNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FW_CTXT_ACTION_MODIFY ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,int /*<<< orphan*/ ) ; 
 struct iwl_mvm* FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  IWL_UCODE_TLV_CAPA_CS_MODIFY ; 
 int /*<<< orphan*/  MAC_CONF_GROUP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_vif*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_hw*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC9 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwl_chan_switch_te_cmd*) ; 
 struct iwl_mvm_vif* FUNC10 (struct ieee80211_vif*) ; 

__attribute__((used)) static void FUNC11(struct ieee80211_hw *hw,
					     struct ieee80211_vif *vif,
					     struct ieee80211_channel_switch *chsw)
{
	struct iwl_mvm *mvm = FUNC2(hw);
	struct iwl_mvm_vif *mvmvif = FUNC10(vif);
	struct iwl_chan_switch_te_cmd cmd = {
		.mac_id = FUNC5(FUNC0(mvmvif->id,
							  mvmvif->color)),
		.action = FUNC5(FW_CTXT_ACTION_MODIFY),
		.tsf = FUNC5(chsw->timestamp),
		.cs_count = chsw->count,
		.cs_mode = chsw->block_tx,
	};

	if (!FUNC6(&mvm->fw->ucode_capa, IWL_UCODE_TLV_CAPA_CS_MODIFY))
		return;

	if (chsw->count >= mvmvif->csa_count && chsw->block_tx) {
		if (mvmvif->csa_misbehave) {
			/* Second time, give up on this AP*/
			FUNC8(hw, vif);
			FUNC7(vif, false);
			mvmvif->csa_misbehave = false;
			return;
		}
		mvmvif->csa_misbehave = true;
	}
	mvmvif->csa_count = chsw->count;

	FUNC1(mvm, "Modify CSA on mac %d\n", mvmvif->id);

	FUNC3(FUNC9(mvm,
				     FUNC4(MAC_CONF_GROUP,
					     CHANNEL_SWITCH_TIME_EVENT_CMD),
				     CMD_ASYNC, sizeof(cmd), &cmd));
}