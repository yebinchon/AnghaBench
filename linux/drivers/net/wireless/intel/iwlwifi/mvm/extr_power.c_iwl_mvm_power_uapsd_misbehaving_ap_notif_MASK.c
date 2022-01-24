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
typedef  int /*<<< orphan*/  u8 ;
struct iwl_uapsd_misbehaving_ap_notif {int /*<<< orphan*/  sta_id; } ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_IFACE_ITER_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iwl_mvm_power_uapsd_misbehav_ap_iterator ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct iwl_rx_packet* FUNC2 (struct iwl_rx_cmd_buffer*) ; 

void FUNC3(struct iwl_mvm *mvm,
					      struct iwl_rx_cmd_buffer *rxb)
{
	struct iwl_rx_packet *pkt = FUNC2(rxb);
	struct iwl_uapsd_misbehaving_ap_notif *notif = (void *)pkt->data;
	u8 ap_sta_id = FUNC1(notif->sta_id);

	FUNC0(
		mvm->hw, IEEE80211_IFACE_ITER_NORMAL,
		iwl_mvm_power_uapsd_misbehav_ap_iterator, &ap_sta_id);
}