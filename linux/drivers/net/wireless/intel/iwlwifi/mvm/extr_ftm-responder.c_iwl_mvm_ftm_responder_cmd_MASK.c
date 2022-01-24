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
struct iwl_tof_responder_config_cmd {int /*<<< orphan*/  bssid; void* ctrl_ch_position; int /*<<< orphan*/  bandwidth; int /*<<< orphan*/  sta_id; int /*<<< orphan*/  cmd_valid_fields; int /*<<< orphan*/  channel_num; } ;
struct TYPE_4__ {int /*<<< orphan*/  sta_id; } ;
struct iwl_mvm_vif {TYPE_2__ bcast_sta; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int /*<<< orphan*/  addr; } ;
struct cfg80211_chan_def {int width; TYPE_1__* chan; } ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_3__ {int /*<<< orphan*/  hw_value; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  IWL_TOF_BW_20_HT ; 
 int /*<<< orphan*/  IWL_TOF_BW_20_LEGACY ; 
 int /*<<< orphan*/  IWL_TOF_BW_40 ; 
 int /*<<< orphan*/  IWL_TOF_BW_80 ; 
 int IWL_TOF_RESPONDER_CMD_VALID_BSSID ; 
 int IWL_TOF_RESPONDER_CMD_VALID_CHAN_INFO ; 
 int IWL_TOF_RESPONDER_CMD_VALID_STA_ID ; 
 int /*<<< orphan*/  LOCATION_GROUP ; 
#define  NL80211_CHAN_WIDTH_20 131 
#define  NL80211_CHAN_WIDTH_20_NOHT 130 
#define  NL80211_CHAN_WIDTH_40 129 
#define  NL80211_CHAN_WIDTH_80 128 
 int /*<<< orphan*/  TOF_RESPONDER_CONFIG_CMD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct cfg80211_chan_def*) ; 
 int FUNC4 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwl_tof_responder_config_cmd*) ; 
 struct iwl_mvm_vif* FUNC5 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct iwl_mvm *mvm,
			  struct ieee80211_vif *vif,
			  struct cfg80211_chan_def *chandef)
{
	struct iwl_mvm_vif *mvmvif = FUNC5(vif);
	struct iwl_tof_responder_config_cmd cmd = {
		.channel_num = chandef->chan->hw_value,
		.cmd_valid_fields =
			FUNC1(IWL_TOF_RESPONDER_CMD_VALID_CHAN_INFO |
				    IWL_TOF_RESPONDER_CMD_VALID_BSSID |
				    IWL_TOF_RESPONDER_CMD_VALID_STA_ID),
		.sta_id = mvmvif->bcast_sta.sta_id,
	};

	FUNC6(&mvm->mutex);

	switch (chandef->width) {
	case NL80211_CHAN_WIDTH_20_NOHT:
		cmd.bandwidth = IWL_TOF_BW_20_LEGACY;
		break;
	case NL80211_CHAN_WIDTH_20:
		cmd.bandwidth = IWL_TOF_BW_20_HT;
		break;
	case NL80211_CHAN_WIDTH_40:
		cmd.bandwidth = IWL_TOF_BW_40;
		cmd.ctrl_ch_position = FUNC3(chandef);
		break;
	case NL80211_CHAN_WIDTH_80:
		cmd.bandwidth = IWL_TOF_BW_80;
		cmd.ctrl_ch_position = FUNC3(chandef);
		break;
	default:
		FUNC0(1);
		return -EINVAL;
	}

	FUNC7(cmd.bssid, vif->addr, ETH_ALEN);

	return FUNC4(mvm, FUNC2(TOF_RESPONDER_CONFIG_CMD,
						    LOCATION_GROUP, 0),
				    0, sizeof(cmd), &cmd);
}