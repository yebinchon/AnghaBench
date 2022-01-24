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
struct iwl_mvm_vif {int /*<<< orphan*/  color; int /*<<< orphan*/  id; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; } ;
struct iwl_chan_switch_te_cmd {int /*<<< orphan*/  cs_delayed_bcn_count; int /*<<< orphan*/  cs_mode; int /*<<< orphan*/  cs_count; int /*<<< orphan*/  tsf; int /*<<< orphan*/  action; int /*<<< orphan*/  mac_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  beacon_int; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; } ;
struct ieee80211_channel_switch {scalar_t__ delay; int /*<<< orphan*/  block_tx; int /*<<< orphan*/  count; int /*<<< orphan*/  timestamp; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CHANNEL_SWITCH_TIME_EVENT_CMD ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FW_CTXT_ACTION_ADD ; 
 int /*<<< orphan*/  MAC_CONF_GROUP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwl_chan_switch_te_cmd*) ; 
 struct iwl_mvm_vif* FUNC5 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct iwl_mvm *mvm,
				       struct ieee80211_vif *vif,
				       struct ieee80211_channel_switch *chsw)
{
	struct iwl_mvm_vif *mvmvif = FUNC5(vif);
	struct iwl_chan_switch_te_cmd cmd = {
		.mac_id = FUNC3(FUNC1(mvmvif->id,
							  mvmvif->color)),
		.action = FUNC3(FW_CTXT_ACTION_ADD),
		.tsf = FUNC3(chsw->timestamp),
		.cs_count = chsw->count,
		.cs_mode = chsw->block_tx,
	};

	FUNC6(&mvm->mutex);

	if (chsw->delay)
		cmd.cs_delayed_bcn_count =
			FUNC0(chsw->delay, vif->bss_conf.beacon_int);

	return FUNC4(mvm,
				    FUNC2(MAC_CONF_GROUP,
					    CHANNEL_SWITCH_TIME_EVENT_CMD),
				    0, sizeof(cmd), &cmd);
}