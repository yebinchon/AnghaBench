#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_12__ {void* length; void* code; } ;
struct mwl8k_cmd_set_new_stn {int mac_ht_param_info; int is_qos_sta; TYPE_6__ header; void* ht_capabilities_info; int /*<<< orphan*/ * ht_rates; int /*<<< orphan*/  legacy_rates; void* action; void* stn_id; int /*<<< orphan*/  mac_addr; void* aid; } ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/ * rx_mask; } ;
struct TYPE_11__ {int cap; int ampdu_factor; int ampdu_density; TYPE_4__ mcs; scalar_t__ ht_supported; } ;
struct ieee80211_sta {int aid; int* supp_rates; TYPE_5__ ht_cap; int /*<<< orphan*/  addr; } ;
struct TYPE_8__ {TYPE_1__* chan; } ;
struct TYPE_9__ {TYPE_2__ chandef; } ;
struct ieee80211_hw {TYPE_3__ conf; } ;
struct TYPE_7__ {size_t band; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MWL8K_CMD_SET_NEW_STN ; 
 int MWL8K_STA_ACTION_ADD ; 
 size_t NL80211_BAND_2GHZ ; 
 size_t NL80211_BAND_5GHZ ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mwl8k_cmd_set_new_stn*) ; 
 struct mwl8k_cmd_set_new_stn* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ieee80211_hw*,struct ieee80211_vif*,TYPE_6__*) ; 

__attribute__((used)) static int FUNC6(struct ieee80211_hw *hw,
				     struct ieee80211_vif *vif,
				     struct ieee80211_sta *sta)
{
	struct mwl8k_cmd_set_new_stn *cmd;
	u32 rates;
	int rc;

	cmd = FUNC3(sizeof(*cmd), GFP_KERNEL);
	if (cmd == NULL)
		return -ENOMEM;

	cmd->header.code = FUNC0(MWL8K_CMD_SET_NEW_STN);
	cmd->header.length = FUNC0(sizeof(*cmd));
	cmd->aid = FUNC0(sta->aid);
	FUNC4(cmd->mac_addr, sta->addr, ETH_ALEN);
	cmd->stn_id = FUNC0(sta->aid);
	cmd->action = FUNC0(MWL8K_STA_ACTION_ADD);
	if (hw->conf.chandef.chan->band == NL80211_BAND_2GHZ)
		rates = sta->supp_rates[NL80211_BAND_2GHZ];
	else
		rates = sta->supp_rates[NL80211_BAND_5GHZ] << 5;
	cmd->legacy_rates = FUNC1(rates);
	if (sta->ht_cap.ht_supported) {
		cmd->ht_rates[0] = sta->ht_cap.mcs.rx_mask[0];
		cmd->ht_rates[1] = sta->ht_cap.mcs.rx_mask[1];
		cmd->ht_rates[2] = sta->ht_cap.mcs.rx_mask[2];
		cmd->ht_rates[3] = sta->ht_cap.mcs.rx_mask[3];
		cmd->ht_capabilities_info = FUNC0(sta->ht_cap.cap);
		cmd->mac_ht_param_info = (sta->ht_cap.ampdu_factor & 3) |
			((sta->ht_cap.ampdu_density & 7) << 2);
		cmd->is_qos_sta = 1;
	}

	rc = FUNC5(hw, vif, &cmd->header);
	FUNC2(cmd);

	return rc;
}