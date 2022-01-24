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
typedef  size_t u32 ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm_vif {int /*<<< orphan*/  csa_work; int /*<<< orphan*/  color; int /*<<< orphan*/  id; } ;
struct iwl_mvm {TYPE_2__* fw; int /*<<< orphan*/  csa_vif; int /*<<< orphan*/  cs_tx_unblock_dwork; int /*<<< orphan*/ * vif_id_to_mac; } ;
struct iwl_channel_switch_noa_notif {int /*<<< orphan*/  id_and_color; } ;
struct TYPE_3__ {int beacon_int; } ;
struct ieee80211_vif {int type; TYPE_1__ bss_conf; int /*<<< orphan*/  csa_active; } ;
struct TYPE_4__ {int /*<<< orphan*/  ucode_capa; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FW_CTXT_ID_MSK ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*) ; 
 int IWL_MVM_CS_UNBLOCK_TX_TIMEOUT ; 
 int /*<<< orphan*/  IWL_UCODE_TLV_CAPA_CHANNEL_SWITCH_CMD ; 
#define  NL80211_IFTYPE_AP 129 
#define  NL80211_IFTYPE_STATION 128 
 size_t NUM_MAC_INDEX_DRIVER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_vif*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC10 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 struct iwl_mvm_vif* FUNC11 (struct ieee80211_vif*) ; 
 int FUNC12 (struct iwl_rx_packet*) ; 
 size_t FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 struct ieee80211_vif* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 struct iwl_rx_packet* FUNC18 (struct iwl_rx_cmd_buffer*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC20(struct iwl_mvm *mvm,
				      struct iwl_rx_cmd_buffer *rxb)
{
	struct iwl_rx_packet *pkt = FUNC18(rxb);
	struct iwl_channel_switch_noa_notif *notif = (void *)pkt->data;
	struct ieee80211_vif *csa_vif, *vif;
	struct iwl_mvm_vif *mvmvif;
	int len = FUNC12(pkt);
	u32 id_n_color, csa_id, mac_id;

	if (FUNC5(len < sizeof(*notif)))
		return;

	id_n_color = FUNC13(notif->id_and_color);
	mac_id = id_n_color & FW_CTXT_ID_MSK;

	if (FUNC5(mac_id >= NUM_MAC_INDEX_DRIVER))
		return;

	FUNC16();
	vif = FUNC15(mvm->vif_id_to_mac[mac_id]);
	mvmvif = FUNC11(vif);

	switch (vif->type) {
	case NL80211_IFTYPE_AP:
		csa_vif = FUNC15(mvm->csa_vif);
		if (FUNC4(!csa_vif || !csa_vif->csa_active ||
			    csa_vif != vif))
			goto out_unlock;

		csa_id = FUNC0(mvmvif->id, mvmvif->color);
		if (FUNC3(csa_id != id_n_color,
			 "channel switch noa notification on unexpected vif (csa_vif=%d, notif=%d)",
			 csa_id, id_n_color))
			goto out_unlock;

		FUNC1(mvm, "Channel Switch Started Notification\n");

		FUNC19(&mvm->cs_tx_unblock_dwork,
				      FUNC14(IWL_MVM_CS_UNBLOCK_TX_TIMEOUT *
						       csa_vif->bss_conf.beacon_int));

		FUNC9(csa_vif);

		FUNC17();

		FUNC2(mvm->csa_vif, NULL);
		return;
	case NL80211_IFTYPE_STATION:
		if (!FUNC7(&mvm->fw->ucode_capa,
				 IWL_UCODE_TLV_CAPA_CHANNEL_SWITCH_CMD))
			FUNC10(mvm, vif);
		FUNC6(&mvmvif->csa_work);
		FUNC8(vif, true);
		break;
	default:
		/* should never happen */
		FUNC5(1);
		break;
	}
out_unlock:
	FUNC17();
}