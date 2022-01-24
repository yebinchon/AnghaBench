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
struct iwl_mvm_vif {int /*<<< orphan*/  id; int /*<<< orphan*/  color; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; } ;
struct iwl_chan_switch_te_cmd {int /*<<< orphan*/  action; int /*<<< orphan*/  mac_id; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CHANNEL_SWITCH_TIME_EVENT_CMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FW_CTXT_ACTION_REMOVE ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,int /*<<< orphan*/ ) ; 
 struct iwl_mvm* FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  MAC_CONF_GROUP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwl_chan_switch_te_cmd*) ; 
 struct iwl_mvm_vif* FUNC8 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct ieee80211_hw *hw,
					 struct ieee80211_vif *vif)
{
	struct iwl_mvm *mvm = FUNC2(hw);
	struct iwl_mvm_vif *mvmvif = FUNC8(vif);
	struct iwl_chan_switch_te_cmd cmd = {
		.mac_id = FUNC5(FUNC0(mvmvif->id,
							  mvmvif->color)),
		.action = FUNC5(FW_CTXT_ACTION_REMOVE),
	};

	FUNC1(mvm, "Abort CSA on mac %d\n", mvmvif->id);

	FUNC9(&mvm->mutex);
	FUNC3(FUNC7(mvm,
				     FUNC4(MAC_CONF_GROUP,
					     CHANNEL_SWITCH_TIME_EVENT_CMD),
				     0, sizeof(cmd), &cmd));
	FUNC10(&mvm->mutex);

	FUNC3(FUNC6(hw, vif));
}