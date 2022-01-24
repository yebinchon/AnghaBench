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
typedef  size_t u32 ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm_eosp_notification {int /*<<< orphan*/  sta_id; } ;
struct iwl_mvm {int /*<<< orphan*/ * fw_id_to_mac_id; } ;
struct ieee80211_sta {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_sta*) ; 
 size_t IWL_MVM_STATION_COUNT ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sta*) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 struct ieee80211_sta* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct iwl_rx_packet* FUNC7 (struct iwl_rx_cmd_buffer*) ; 

void FUNC8(struct iwl_mvm *mvm,
			   struct iwl_rx_cmd_buffer *rxb)
{
	struct iwl_rx_packet *pkt = FUNC7(rxb);
	struct iwl_mvm_eosp_notification *notif = (void *)pkt->data;
	struct ieee80211_sta *sta;
	u32 sta_id = FUNC3(notif->sta_id);

	if (FUNC1(sta_id >= IWL_MVM_STATION_COUNT))
		return;

	FUNC5();
	sta = FUNC4(mvm->fw_id_to_mac_id[sta_id]);
	if (!FUNC0(sta))
		FUNC2(sta);
	FUNC6();
}