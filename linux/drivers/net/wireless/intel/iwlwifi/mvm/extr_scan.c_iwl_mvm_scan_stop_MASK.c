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
struct iwl_mvm {int scan_status; int /*<<< orphan*/  sched_scan_pass_all; int /*<<< orphan*/  hw; int /*<<< orphan*/  scan_timeout_dwork; } ;
struct cfg80211_scan_info {int aborted; } ;

/* Variables and functions */
 int IWL_MVM_SCAN_REGULAR ; 
 int IWL_MVM_SCAN_STOPPING_SHIFT ; 
 int /*<<< orphan*/  SCHED_SCAN_PASS_ALL_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct cfg80211_scan_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct iwl_mvm*) ; 
 int FUNC4 (struct iwl_mvm*,int) ; 

int FUNC5(struct iwl_mvm *mvm, int type, bool notify)
{
	int ret;

	if (!(mvm->scan_status & type))
		return 0;

	if (FUNC3(mvm)) {
		ret = 0;
		goto out;
	}

	ret = FUNC4(mvm, type);
	if (!ret)
		mvm->scan_status |= type << IWL_MVM_SCAN_STOPPING_SHIFT;
out:
	/* Clear the scan status so the next scan requests will
	 * succeed and mark the scan as stopping, so that the Rx
	 * handler doesn't do anything, as the scan was stopped from
	 * above.
	 */
	mvm->scan_status &= ~type;

	if (type == IWL_MVM_SCAN_REGULAR) {
		FUNC0(&mvm->scan_timeout_dwork);
		if (notify) {
			struct cfg80211_scan_info info = {
				.aborted = true,
			};

			FUNC1(mvm->hw, &info);
		}
	} else if (notify) {
		FUNC2(mvm->hw);
		mvm->sched_scan_pass_all = SCHED_SCAN_PASS_ALL_DISABLED;
	}

	return ret;
}