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
struct iwl_mvm {int /*<<< orphan*/  mutex; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_RECOVERY_END_OF_RECOVERY ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int) ; 
 int /*<<< orphan*/  IWL_MVM_STATUS_IN_HW_RESTART ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*) ; 
 int FUNC4 (struct iwl_mvm*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct iwl_mvm *mvm)
{
	int ret;

	FUNC5(&mvm->mutex);

	FUNC1(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status);

	ret = FUNC4(mvm, true, NULL);
	if (ret)
		FUNC0(mvm, "Failed to update quotas after restart (%d)\n",
			ret);

	FUNC2(mvm, ERROR_RECOVERY_END_OF_RECOVERY);

	/*
	 * If we have TDLS peers, remove them. We don't know the last seqno/PN
	 * of packets the FW sent out, so we must reconnect.
	 */
	FUNC3(mvm);

	FUNC6(&mvm->mutex);
}