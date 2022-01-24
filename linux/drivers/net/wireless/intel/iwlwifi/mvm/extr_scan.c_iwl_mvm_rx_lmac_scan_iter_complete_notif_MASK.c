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
struct iwl_mvm {scalar_t__ sched_scan_pass_all; int /*<<< orphan*/  hw; } ;
struct iwl_lmac_scan_complete_notif {int /*<<< orphan*/  scanned_channels; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,...) ; 
 scalar_t__ SCHED_SCAN_PASS_ALL_ENABLED ; 
 scalar_t__ SCHED_SCAN_PASS_ALL_FOUND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct iwl_rx_packet* FUNC2 (struct iwl_rx_cmd_buffer*) ; 

void FUNC3(struct iwl_mvm *mvm,
					      struct iwl_rx_cmd_buffer *rxb)
{
	struct iwl_rx_packet *pkt = FUNC2(rxb);
	struct iwl_lmac_scan_complete_notif *notif = (void *)pkt->data;

	FUNC0(mvm,
		       "Scan offload iteration complete: status=0x%x scanned channels=%d\n",
		       notif->status, notif->scanned_channels);

	if (mvm->sched_scan_pass_all == SCHED_SCAN_PASS_ALL_FOUND) {
		FUNC0(mvm, "Pass all scheduled scan results found\n");
		FUNC1(mvm->hw);
		mvm->sched_scan_pass_all = SCHED_SCAN_PASS_ALL_ENABLED;
	}
}