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
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm {int /*<<< orphan*/  hw; } ;
struct iwl_mu_group_mgmt_notif {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_IFACE_ITER_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iwl_mu_group_mgmt_notif*) ; 
 int /*<<< orphan*/  iwl_mvm_mu_mimo_iface_iterator ; 
 struct iwl_rx_packet* FUNC1 (struct iwl_rx_cmd_buffer*) ; 

void FUNC2(struct iwl_mvm *mvm,
			       struct iwl_rx_cmd_buffer *rxb)
{
	struct iwl_rx_packet *pkt = FUNC1(rxb);
	struct iwl_mu_group_mgmt_notif *notif = (void *)pkt->data;

	FUNC0(
			mvm->hw, IEEE80211_IFACE_ITER_NORMAL,
			iwl_mvm_mu_mimo_iface_iterator, notif);
}