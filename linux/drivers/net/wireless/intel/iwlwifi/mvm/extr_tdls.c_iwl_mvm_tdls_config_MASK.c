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
struct iwl_tdls_config_res {int dummy; } ;
struct iwl_tdls_config_cmd {int tdls_peer_count; TYPE_1__* sta_info; void* tx_to_ap_ssn; void* tx_to_ap_tid; void* id_and_color; } ;
struct iwl_rx_packet {int dummy; } ;
struct iwl_mvm_vif {int /*<<< orphan*/  color; int /*<<< orphan*/  id; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * fw_id_to_mac_id; } ;
struct iwl_host_cmd {struct iwl_rx_packet* resp_pkt; int /*<<< orphan*/  len; int /*<<< orphan*/  data; int /*<<< orphan*/  flags; int /*<<< orphan*/  id; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {scalar_t__ tdls_initiator; int /*<<< orphan*/  tdls; } ;
struct TYPE_2__ {int sta_id; void* is_initiator; void* tx_to_peer_ssn; void* tx_to_peer_tid; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CMD_WANT_SKB ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*,char*,int) ; 
 void* IWL_MVM_TDLS_FW_TID ; 
 int /*<<< orphan*/  TDLS_CONFIG_CMD ; 
 scalar_t__ FUNC4 (int) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_host_cmd*) ; 
 int FUNC8 (struct iwl_mvm*,struct iwl_host_cmd*) ; 
 struct iwl_mvm_vif* FUNC9 (struct ieee80211_vif*) ; 
 int FUNC10 (struct iwl_rx_packet*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct ieee80211_sta* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct iwl_mvm *mvm, struct ieee80211_vif *vif)
{
	struct iwl_rx_packet *pkt;
	struct iwl_tdls_config_res *resp;
	struct iwl_tdls_config_cmd tdls_cfg_cmd = {};
	struct iwl_host_cmd cmd = {
		.id = TDLS_CONFIG_CMD,
		.flags = CMD_WANT_SKB,
		.data = &tdls_cfg_cmd, 
		.len = sizeof(struct iwl_tdls_config_cmd), 
	};
	struct ieee80211_sta *sta;
	int ret, i, cnt;
	struct iwl_mvm_vif *mvmvif = FUNC9(vif);

	FUNC11(&mvm->mutex);

	tdls_cfg_cmd.id_and_color =
		FUNC6(FUNC1(mvmvif->id, mvmvif->color));
	tdls_cfg_cmd.tx_to_ap_tid = IWL_MVM_TDLS_FW_TID;
	tdls_cfg_cmd.tx_to_ap_ssn = FUNC5(0); /* not used for now */

	/* for now the Tx cmd is empty and unused */

	/* populate TDLS peer data */
	cnt = 0;
	for (i = 0; i < FUNC0(mvm->fw_id_to_mac_id); i++) {
		sta = FUNC13(mvm->fw_id_to_mac_id[i],
						FUNC12(&mvm->mutex));
		if (FUNC2(sta) || !sta->tdls)
			continue;

		tdls_cfg_cmd.sta_info[cnt].sta_id = i;
		tdls_cfg_cmd.sta_info[cnt].tx_to_peer_tid =
							IWL_MVM_TDLS_FW_TID;
		tdls_cfg_cmd.sta_info[cnt].tx_to_peer_ssn = FUNC5(0);
		tdls_cfg_cmd.sta_info[cnt].is_initiator =
				FUNC6(sta->tdls_initiator ? 1 : 0);

		cnt++;
	}

	tdls_cfg_cmd.tdls_peer_count = cnt;
	FUNC3(mvm, "send TDLS config to FW for %d peers\n", cnt);

	ret = FUNC8(mvm, &cmd);
	if (FUNC4(ret))
		return;

	pkt = cmd.resp_pkt;

	FUNC4(FUNC10(pkt) != sizeof(*resp));

	/* we don't really care about the response at this point */

	FUNC7(&cmd);
}