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
struct iwl_umac_scan_iter_complete_notif {int /*<<< orphan*/  scanned_channels; int /*<<< orphan*/  status; int /*<<< orphan*/  start_tsf; } ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm {scalar_t__ sched_scan_pass_all; int /*<<< orphan*/  scan_start; int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,...) ; 
 scalar_t__ SCHED_SCAN_PASS_ALL_ENABLED ; 
 scalar_t__ SCHED_SCAN_PASS_ALL_FOUND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct iwl_rx_packet* FUNC3 (struct iwl_rx_cmd_buffer*) ; 

void FUNC4(struct iwl_mvm *mvm,
					      struct iwl_rx_cmd_buffer *rxb)
{
	struct iwl_rx_packet *pkt = FUNC3(rxb);
	struct iwl_umac_scan_iter_complete_notif *notif = (void *)pkt->data;

	mvm->scan_start = FUNC2(notif->start_tsf);

	FUNC0(mvm,
		       "UMAC Scan iteration complete: status=0x%x scanned_channels=%d\n",
		       notif->status, notif->scanned_channels);

	if (mvm->sched_scan_pass_all == SCHED_SCAN_PASS_ALL_FOUND) {
		FUNC0(mvm, "Pass all scheduled scan results found\n");
		FUNC1(mvm->hw);
		mvm->sched_scan_pass_all = SCHED_SCAN_PASS_ALL_ENABLED;
	}

	FUNC0(mvm,
		       "UMAC Scan iteration complete: scan started at %llu (TSF)\n",
		       mvm->scan_start);
}