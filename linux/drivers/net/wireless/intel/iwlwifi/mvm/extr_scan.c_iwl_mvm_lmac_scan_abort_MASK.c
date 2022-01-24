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
typedef  scalar_t__ u32 ;
struct iwl_mvm {int dummy; } ;
struct iwl_host_cmd {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 scalar_t__ CAN_ABORT_STATUS ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,scalar_t__) ; 
 int /*<<< orphan*/  SCAN_OFFLOAD_ABORT_CMD ; 
 int FUNC1 (struct iwl_mvm*,struct iwl_host_cmd*,scalar_t__*) ; 

__attribute__((used)) static int FUNC2(struct iwl_mvm *mvm)
{
	int ret;
	struct iwl_host_cmd cmd = {
		.id = SCAN_OFFLOAD_ABORT_CMD,
	};
	u32 status = CAN_ABORT_STATUS;

	ret = FUNC1(mvm, &cmd, &status);
	if (ret)
		return ret;

	if (status != CAN_ABORT_STATUS) {
		/*
		 * The scan abort will return 1 for success or
		 * 2 for "failure".  A failure condition can be
		 * due to simply not being in an active scan which
		 * can occur if we send the scan abort before the
		 * microcode has notified us that a scan is completed.
		 */
		FUNC0(mvm, "SCAN OFFLOAD ABORT ret %d.\n", status);
		ret = -ENOENT;
	}

	return ret;
}