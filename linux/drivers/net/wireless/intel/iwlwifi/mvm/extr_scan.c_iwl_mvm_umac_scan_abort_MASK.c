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
struct iwl_umac_scan_abort {int /*<<< orphan*/  uid; } ;
struct iwl_mvm {int* scan_uid_status; int /*<<< orphan*/  mutex; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  IWL_ALWAYS_LONG_GROUP ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int) ; 
 int IWL_MVM_SCAN_STOPPING_SHIFT ; 
 int /*<<< orphan*/  SCAN_ABORT_UMAC ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct iwl_mvm*,int) ; 
 int FUNC5 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwl_umac_scan_abort*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct iwl_mvm *mvm, int type)
{
	struct iwl_umac_scan_abort cmd = {};
	int uid, ret;

	FUNC6(&mvm->mutex);

	/* We should always get a valid index here, because we already
	 * checked that this type of scan was running in the generic
	 * code.
	 */
	uid = FUNC4(mvm, type);
	if (FUNC1(uid < 0))
		return uid;

	cmd.uid = FUNC2(uid);

	FUNC0(mvm, "Sending scan abort, uid %u\n", uid);

	ret = FUNC5(mvm,
				   FUNC3(SCAN_ABORT_UMAC,
					      IWL_ALWAYS_LONG_GROUP, 0),
				   0, sizeof(cmd), &cmd);
	if (!ret)
		mvm->scan_uid_status[uid] = type << IWL_MVM_SCAN_STOPPING_SHIFT;

	return ret;
}