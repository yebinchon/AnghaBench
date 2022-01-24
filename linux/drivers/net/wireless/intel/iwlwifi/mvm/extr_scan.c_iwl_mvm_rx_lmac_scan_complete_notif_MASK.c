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
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_periodic_scan_complete {scalar_t__ status; scalar_t__ ebs_status; int /*<<< orphan*/  time_after_last_iter; int /*<<< orphan*/  last_schedule_iteration; int /*<<< orphan*/  last_schedule_line; } ;
struct iwl_mvm {int scan_status; int last_ebs_successful; int /*<<< orphan*/  scan_timeout_dwork; int /*<<< orphan*/  hw; int /*<<< orphan*/  sched_scan_pass_all; int /*<<< orphan*/  mutex; TYPE_1__* fw; } ;
struct cfg80211_scan_info {int aborted; } ;
struct TYPE_2__ {int /*<<< orphan*/  ucode_capa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*) ; 
 int IWL_MVM_SCAN_REGULAR ; 
 int IWL_MVM_SCAN_SCHED ; 
 int IWL_MVM_SCAN_STOPPING_REGULAR ; 
 int IWL_MVM_SCAN_STOPPING_SCHED ; 
 scalar_t__ IWL_SCAN_EBS_INACTIVE ; 
 scalar_t__ IWL_SCAN_EBS_SUCCESS ; 
 scalar_t__ IWL_SCAN_OFFLOAD_ABORTED ; 
 int /*<<< orphan*/  IWL_UCODE_TLV_CAPA_UMAC_SCAN ; 
 int /*<<< orphan*/  SCHED_SCAN_PASS_ALL_DISABLED ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct cfg80211_scan_info*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct iwl_rx_packet* FUNC11 (struct iwl_rx_cmd_buffer*) ; 

void FUNC12(struct iwl_mvm *mvm,
					 struct iwl_rx_cmd_buffer *rxb)
{
	struct iwl_rx_packet *pkt = FUNC11(rxb);
	struct iwl_periodic_scan_complete *scan_notif = (void *)pkt->data;
	bool aborted = (scan_notif->status == IWL_SCAN_OFFLOAD_ABORTED);

	/* If this happens, the firmware has mistakenly sent an LMAC
	 * notification during UMAC scans -- warn and ignore it.
	 */
	if (FUNC2(FUNC5(&mvm->fw->ucode_capa,
				     IWL_UCODE_TLV_CAPA_UMAC_SCAN)))
		return;

	/* scan status must be locked for proper checking */
	FUNC10(&mvm->mutex);

	/* We first check if we were stopping a scan, in which case we
	 * just clear the stopping flag.  Then we check if it was a
	 * firmware initiated stop, in which case we need to inform
	 * mac80211.
	 * Note that we can have a stopping and a running scan
	 * simultaneously, but we can't have two different types of
	 * scans stopping or running at the same time (since LMAC
	 * doesn't support it).
	 */

	if (mvm->scan_status & IWL_MVM_SCAN_STOPPING_SCHED) {
		FUNC2(mvm->scan_status & IWL_MVM_SCAN_STOPPING_REGULAR);

		FUNC0(mvm, "Scheduled scan %s, EBS status %s\n",
			       aborted ? "aborted" : "completed",
			       FUNC8(scan_notif->ebs_status));
		FUNC0(mvm,
			       "Last line %d, Last iteration %d, Time after last iteration %d\n",
			       scan_notif->last_schedule_line,
			       scan_notif->last_schedule_iteration,
			       FUNC3(scan_notif->time_after_last_iter));

		mvm->scan_status &= ~IWL_MVM_SCAN_STOPPING_SCHED;
	} else if (mvm->scan_status & IWL_MVM_SCAN_STOPPING_REGULAR) {
		FUNC0(mvm, "Regular scan %s, EBS status %s\n",
			       aborted ? "aborted" : "completed",
			       FUNC8(scan_notif->ebs_status));

		mvm->scan_status &= ~IWL_MVM_SCAN_STOPPING_REGULAR;
	} else if (mvm->scan_status & IWL_MVM_SCAN_SCHED) {
		FUNC2(mvm->scan_status & IWL_MVM_SCAN_REGULAR);

		FUNC0(mvm, "Scheduled scan %s, EBS status %s\n",
			       aborted ? "aborted" : "completed",
			       FUNC8(scan_notif->ebs_status));
		FUNC0(mvm,
			       "Last line %d, Last iteration %d, Time after last iteration %d (FW)\n",
			       scan_notif->last_schedule_line,
			       scan_notif->last_schedule_iteration,
			       FUNC3(scan_notif->time_after_last_iter));

		mvm->scan_status &= ~IWL_MVM_SCAN_SCHED;
		FUNC7(mvm->hw);
		mvm->sched_scan_pass_all = SCHED_SCAN_PASS_ALL_DISABLED;
	} else if (mvm->scan_status & IWL_MVM_SCAN_REGULAR) {
		struct cfg80211_scan_info info = {
			.aborted = aborted,
		};

		FUNC0(mvm, "Regular scan %s, EBS status %s (FW)\n",
			       aborted ? "aborted" : "completed",
			       FUNC8(scan_notif->ebs_status));

		mvm->scan_status &= ~IWL_MVM_SCAN_REGULAR;
		FUNC6(mvm->hw, &info);
		FUNC4(&mvm->scan_timeout_dwork);
		FUNC9(mvm);
	} else {
		FUNC1(mvm,
			"got scan complete notification but no scan is running\n");
	}

	mvm->last_ebs_successful =
			scan_notif->ebs_status == IWL_SCAN_EBS_SUCCESS ||
			scan_notif->ebs_status == IWL_SCAN_EBS_INACTIVE;
}