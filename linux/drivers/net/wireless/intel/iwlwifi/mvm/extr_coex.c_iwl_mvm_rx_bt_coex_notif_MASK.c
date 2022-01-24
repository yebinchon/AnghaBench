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
struct iwl_mvm {int /*<<< orphan*/  last_bt_notif; } ;
struct iwl_bt_coex_profile_notif {int /*<<< orphan*/  bt_activity_grading; int /*<<< orphan*/  secondary_ch_lut; int /*<<< orphan*/  primary_ch_lut; int /*<<< orphan*/  bt_ci_compliance; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct iwl_bt_coex_profile_notif*,int) ; 
 struct iwl_rx_packet* FUNC4 (struct iwl_rx_cmd_buffer*) ; 

void FUNC5(struct iwl_mvm *mvm,
			      struct iwl_rx_cmd_buffer *rxb)
{
	struct iwl_rx_packet *pkt = FUNC4(rxb);
	struct iwl_bt_coex_profile_notif *notif = (void *)pkt->data;

	FUNC0(mvm, "BT Coex Notification received\n");
	FUNC0(mvm, "\tBT ci compliance %d\n", notif->bt_ci_compliance);
	FUNC0(mvm, "\tBT primary_ch_lut %d\n",
		       FUNC2(notif->primary_ch_lut));
	FUNC0(mvm, "\tBT secondary_ch_lut %d\n",
		       FUNC2(notif->secondary_ch_lut));
	FUNC0(mvm, "\tBT activity grading %d\n",
		       FUNC2(notif->bt_activity_grading));

	/* remember this notification for future use: rssi fluctuations */
	FUNC3(&mvm->last_bt_notif, notif, sizeof(mvm->last_bt_notif));

	FUNC1(mvm);
}