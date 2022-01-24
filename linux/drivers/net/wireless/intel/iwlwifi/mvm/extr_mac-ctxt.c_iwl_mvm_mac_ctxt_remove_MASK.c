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
struct iwl_mvm_vif {int uploaded; int /*<<< orphan*/  color; int /*<<< orphan*/  id; } ;
struct iwl_mvm {TYPE_1__* hw; } ;
struct iwl_mac_ctx_cmd {void* action; void* id_and_color; } ;
struct ieee80211_vif {scalar_t__ type; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FW_CTXT_ACTION_REMOVE ; 
 int /*<<< orphan*/  IEEE80211_HW_RX_INCLUDES_FCS ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,int) ; 
 int /*<<< orphan*/  MAC_CONTEXT_CMD ; 
 scalar_t__ NL80211_IFTYPE_MONITOR ; 
 scalar_t__ FUNC2 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_mvm*) ; 
 int FUNC7 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwl_mac_ctx_cmd*) ; 
 struct iwl_mvm_vif* FUNC8 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC9 (struct iwl_mac_ctx_cmd*,int /*<<< orphan*/ ,int) ; 

int FUNC10(struct iwl_mvm *mvm, struct ieee80211_vif *vif)
{
	struct iwl_mvm_vif *mvmvif = FUNC8(vif);
	struct iwl_mac_ctx_cmd cmd;
	int ret;

	if (FUNC2(!mvmvif->uploaded, "Removing inactive MAC %pM/%d\n",
		      vif->addr, FUNC5(vif)))
		return -EIO;

	FUNC9(&cmd, 0, sizeof(cmd));

	cmd.id_and_color = FUNC4(FUNC0(mvmvif->id,
							   mvmvif->color));
	cmd.action = FUNC4(FW_CTXT_ACTION_REMOVE);

	ret = FUNC7(mvm, MAC_CONTEXT_CMD, 0,
				   sizeof(cmd), &cmd);
	if (ret) {
		FUNC1(mvm, "Failed to remove MAC context: %d\n", ret);
		return ret;
	}

	mvmvif->uploaded = false;

	if (vif->type == NL80211_IFTYPE_MONITOR) {
		FUNC3(IEEE80211_HW_RX_INCLUDES_FCS, mvm->hw->flags);
		FUNC6(mvm);
	}

	return 0;
}