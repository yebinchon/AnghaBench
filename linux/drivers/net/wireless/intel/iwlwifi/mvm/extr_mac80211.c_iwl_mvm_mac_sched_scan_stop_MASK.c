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
struct iwl_mvm {int scan_status; int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 struct iwl_mvm* FUNC0 (struct ieee80211_hw*) ; 
 int IWL_MVM_SCAN_SCHED ; 
 int FUNC1 (struct iwl_mvm*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct ieee80211_hw *hw,
				       struct ieee80211_vif *vif)
{
	struct iwl_mvm *mvm = FUNC0(hw);
	int ret;

	FUNC3(&mvm->mutex);

	/* Due to a race condition, it's possible that mac80211 asks
	 * us to stop a sched_scan when it's already stopped.  This
	 * can happen, for instance, if we stopped the scan ourselves,
	 * called ieee80211_sched_scan_stopped() and the userspace called
	 * stop sched scan scan before ieee80211_sched_scan_stopped_work()
	 * could run.  To handle this, simply return if the scan is
	 * not running.
	*/
	if (!(mvm->scan_status & IWL_MVM_SCAN_SCHED)) {
		FUNC4(&mvm->mutex);
		return 0;
	}

	ret = FUNC1(mvm, IWL_MVM_SCAN_SCHED, false);
	FUNC4(&mvm->mutex);
	FUNC2(mvm);

	return ret;
}