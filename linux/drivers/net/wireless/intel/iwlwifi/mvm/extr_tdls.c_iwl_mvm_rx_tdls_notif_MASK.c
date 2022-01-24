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
struct iwl_tdls_channel_switch_notif {int /*<<< orphan*/  status; int /*<<< orphan*/  sta_id; } ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm_sta {struct ieee80211_vif* vif; } ;
struct TYPE_4__ {int /*<<< orphan*/  dwork; } ;
struct iwl_mvm {TYPE_2__ tdls_cs; int /*<<< orphan*/  mutex; int /*<<< orphan*/ * fw_id_to_mac_id; } ;
struct TYPE_3__ {int dtim_period; int beacon_int; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; } ;
struct ieee80211_sta {int /*<<< orphan*/  tdls; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ieee80211_sta*) ; 
 size_t IWL_MVM_STATION_COUNT ; 
 int /*<<< orphan*/  IWL_MVM_TDLS_SW_ACTIVE ; 
 int /*<<< orphan*/  IWL_MVM_TDLS_SW_IDLE ; 
 unsigned int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 struct iwl_mvm_sta* FUNC3 (struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_mvm*,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 struct ieee80211_sta* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iwl_rx_packet* FUNC11 (struct iwl_rx_cmd_buffer*) ; 
 int /*<<< orphan*/  system_wq ; 

void FUNC12(struct iwl_mvm *mvm, struct iwl_rx_cmd_buffer *rxb)
{
	struct iwl_rx_packet *pkt = FUNC11(rxb);
	struct iwl_tdls_channel_switch_notif *notif = (void *)pkt->data;
	struct ieee80211_sta *sta;
	unsigned int delay;
	struct iwl_mvm_sta *mvmsta;
	struct ieee80211_vif *vif;
	u32 sta_id = FUNC5(notif->sta_id);

	FUNC6(&mvm->mutex);

	/* can fail sometimes */
	if (!FUNC5(notif->status)) {
		FUNC4(mvm, IWL_MVM_TDLS_SW_IDLE);
		return;
	}

	if (FUNC2(sta_id >= IWL_MVM_STATION_COUNT))
		return;

	sta = FUNC10(mvm->fw_id_to_mac_id[sta_id],
					FUNC7(&mvm->mutex));
	/* the station may not be here, but if it is, it must be a TDLS peer */
	if (FUNC0(sta) || FUNC2(!sta->tdls))
		return;

	mvmsta = FUNC3(sta);
	vif = mvmsta->vif;

	/*
	 * Update state and possibly switch again after this is over (DTIM).
	 * Also convert TU to msec.
	 */
	delay = FUNC1(vif->bss_conf.dtim_period * vif->bss_conf.beacon_int);
	FUNC8(system_wq, &mvm->tdls_cs.dwork,
			 FUNC9(delay));

	FUNC4(mvm, IWL_MVM_TDLS_SW_ACTIVE);
}