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
struct iwl_mvm {int /*<<< orphan*/  async_handlers_wk; int /*<<< orphan*/  mutex; int /*<<< orphan*/  fwrt; int /*<<< orphan*/  scan_timeout_dwork; int /*<<< orphan*/  cs_tx_unblock_dwork; int /*<<< orphan*/  status; int /*<<< orphan*/  add_stream_wk; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 struct iwl_mvm* FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  IWL_MVM_STATUS_FIRMWARE_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct ieee80211_hw *hw)
{
	struct iwl_mvm *mvm = FUNC0(hw);

	FUNC5(&mvm->async_handlers_wk);
	FUNC5(&mvm->add_stream_wk);

	/*
	 * Lock and clear the firmware running bit here already, so that
	 * new commands coming in elsewhere, e.g. from debugfs, will not
	 * be able to proceed. This is important here because one of those
	 * debugfs files causes the firmware dump to be triggered, and if we
	 * don't stop debugfs accesses before canceling that it could be
	 * retriggered after we flush it but before we've cleared the bit.
	 */
	FUNC4(IWL_MVM_STATUS_FIRMWARE_RUNNING, &mvm->status);

	FUNC2(&mvm->cs_tx_unblock_dwork);
	FUNC2(&mvm->scan_timeout_dwork);
	FUNC6(&mvm->fwrt);

	FUNC7(&mvm->mutex);
	FUNC1(mvm);
	FUNC8(&mvm->mutex);

	/*
	 * The worker might have been waiting for the mutex, let it run and
	 * discover that its list is now empty.
	 */
	FUNC3(&mvm->async_handlers_wk);
}