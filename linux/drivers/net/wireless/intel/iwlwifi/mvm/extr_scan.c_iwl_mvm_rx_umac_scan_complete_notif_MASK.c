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
typedef  size_t u32 ;
struct iwl_umac_scan_complete {scalar_t__ status; scalar_t__ ebs_status; int /*<<< orphan*/  time_from_last_iter; int /*<<< orphan*/  last_iter; int /*<<< orphan*/  last_schedule; int /*<<< orphan*/  uid; } ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm {int* scan_uid_status; int scan_status; int last_ebs_successful; int /*<<< orphan*/  sched_scan_pass_all; int /*<<< orphan*/  hw; int /*<<< orphan*/  scan_timeout_dwork; TYPE_1__* scan_vif; int /*<<< orphan*/  scan_start; } ;
struct cfg80211_scan_info {int aborted; int /*<<< orphan*/  tsf_bssid; int /*<<< orphan*/  scan_start_tsf; } ;
struct TYPE_2__ {int /*<<< orphan*/  bssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,size_t,int,char*,...) ; 
 int IWL_MVM_SCAN_REGULAR ; 
 int IWL_MVM_SCAN_SCHED ; 
 scalar_t__ IWL_SCAN_EBS_INACTIVE ; 
 scalar_t__ IWL_SCAN_EBS_SUCCESS ; 
 scalar_t__ IWL_SCAN_OFFLOAD_ABORTED ; 
 scalar_t__ IWL_SCAN_OFFLOAD_COMPLETED ; 
 int /*<<< orphan*/  SCHED_SCAN_PASS_ALL_DISABLED ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct cfg80211_scan_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iwl_rx_packet* FUNC9 (struct iwl_rx_cmd_buffer*) ; 

void FUNC10(struct iwl_mvm *mvm,
					 struct iwl_rx_cmd_buffer *rxb)
{
	struct iwl_rx_packet *pkt = FUNC9(rxb);
	struct iwl_umac_scan_complete *notif = (void *)pkt->data;
	u32 uid = FUNC2(notif->uid);
	bool aborted = (notif->status == IWL_SCAN_OFFLOAD_ABORTED);

	if (FUNC1(!(mvm->scan_uid_status[uid] & mvm->scan_status)))
		return;

	/* if the scan is already stopping, we don't need to notify mac80211 */
	if (mvm->scan_uid_status[uid] == IWL_MVM_SCAN_REGULAR) {
		struct cfg80211_scan_info info = {
			.aborted = aborted,
			.scan_start_tsf = mvm->scan_start,
		};

		FUNC8(info.tsf_bssid, mvm->scan_vif->bssid, ETH_ALEN);
		FUNC4(mvm->hw, &info);
		mvm->scan_vif = NULL;
		FUNC3(&mvm->scan_timeout_dwork);
		FUNC7(mvm);
	} else if (mvm->scan_uid_status[uid] == IWL_MVM_SCAN_SCHED) {
		FUNC5(mvm->hw);
		mvm->sched_scan_pass_all = SCHED_SCAN_PASS_ALL_DISABLED;
	}

	mvm->scan_status &= ~mvm->scan_uid_status[uid];
	FUNC0(mvm,
		       "Scan completed, uid %u type %u, status %s, EBS status %s\n",
		       uid, mvm->scan_uid_status[uid],
		       notif->status == IWL_SCAN_OFFLOAD_COMPLETED ?
				"completed" : "aborted",
		       FUNC6(notif->ebs_status));
	FUNC0(mvm,
		       "Last line %d, Last iteration %d, Time from last iteration %d\n",
		       notif->last_schedule, notif->last_iter,
		       FUNC2(notif->time_from_last_iter));

	if (notif->ebs_status != IWL_SCAN_EBS_SUCCESS &&
	    notif->ebs_status != IWL_SCAN_EBS_INACTIVE)
		mvm->last_ebs_successful = false;

	mvm->scan_uid_status[uid] = 0;
}