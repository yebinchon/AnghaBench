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
struct iwl_mvm {int max_scans; int scan_status; void* sched_scan_pass_all; int /*<<< orphan*/  hw; int /*<<< orphan*/  fw_restart; scalar_t__* scan_uid_status; TYPE_1__* fw; } ;
struct cfg80211_scan_info {int aborted; } ;
struct TYPE_2__ {int /*<<< orphan*/  ucode_capa; } ;

/* Variables and functions */
 int IWL_MVM_SCAN_REGULAR ; 
 int IWL_MVM_SCAN_SCHED ; 
 int /*<<< orphan*/  IWL_UCODE_TLV_CAPA_UMAC_SCAN ; 
 void* SCHED_SCAN_PASS_ALL_DISABLED ; 
 scalar_t__ FUNC0 (scalar_t__,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct cfg80211_scan_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct iwl_mvm*,int) ; 

void FUNC5(struct iwl_mvm *mvm)
{
	if (FUNC1(&mvm->fw->ucode_capa, IWL_UCODE_TLV_CAPA_UMAC_SCAN)) {
		int uid, i;

		uid = FUNC4(mvm, IWL_MVM_SCAN_REGULAR);
		if (uid >= 0) {
			struct cfg80211_scan_info info = {
				.aborted = true,
			};

			FUNC2(mvm->hw, &info);
			mvm->scan_uid_status[uid] = 0;
		}
		uid = FUNC4(mvm, IWL_MVM_SCAN_SCHED);
		if (uid >= 0 && !mvm->fw_restart) {
			FUNC3(mvm->hw);
			mvm->sched_scan_pass_all = SCHED_SCAN_PASS_ALL_DISABLED;
			mvm->scan_uid_status[uid] = 0;
		}

		/* We shouldn't have any UIDs still set.  Loop over all the
		 * UIDs to make sure there's nothing left there and warn if
		 * any is found.
		 */
		for (i = 0; i < mvm->max_scans; i++) {
			if (FUNC0(mvm->scan_uid_status[i],
				      "UMAC scan UID %d status was not cleaned\n",
				      i))
				mvm->scan_uid_status[i] = 0;
		}
	} else {
		if (mvm->scan_status & IWL_MVM_SCAN_REGULAR) {
			struct cfg80211_scan_info info = {
				.aborted = true,
			};

			FUNC2(mvm->hw, &info);
		}

		/* Sched scan will be restarted by mac80211 in
		 * restart_hw, so do not report if FW is about to be
		 * restarted.
		 */
		if ((mvm->scan_status & IWL_MVM_SCAN_SCHED) &&
		    !mvm->fw_restart) {
			FUNC3(mvm->hw);
			mvm->sched_scan_pass_all = SCHED_SCAN_PASS_ALL_DISABLED;
		}
	}
}