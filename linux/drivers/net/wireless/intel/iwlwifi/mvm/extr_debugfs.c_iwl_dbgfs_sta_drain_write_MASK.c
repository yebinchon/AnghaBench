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
struct iwl_mvm_sta {int dummy; } ;
struct TYPE_2__ {scalar_t__ cur_fw_img; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; TYPE_1__ fwrt; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOENT ; 
 int IWL_MVM_STATION_COUNT ; 
 scalar_t__ IWL_UCODE_REGULAR ; 
 scalar_t__ FUNC0 (struct iwl_mvm*,struct iwl_mvm_sta*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*) ; 
 struct iwl_mvm_sta* FUNC2 (struct iwl_mvm*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,char*,int*,int*) ; 

__attribute__((used)) static ssize_t FUNC6(struct iwl_mvm *mvm, char *buf,
					 size_t count, loff_t *ppos)
{
	struct iwl_mvm_sta *mvmsta;
	int sta_id, drain, ret;

	if (!FUNC1(mvm) ||
	    mvm->fwrt.cur_fw_img != IWL_UCODE_REGULAR)
		return -EIO;

	if (FUNC5(buf, "%d %d", &sta_id, &drain) != 2)
		return -EINVAL;
	if (sta_id < 0 || sta_id >= IWL_MVM_STATION_COUNT)
		return -EINVAL;
	if (drain < 0 || drain > 1)
		return -EINVAL;

	FUNC3(&mvm->mutex);

	mvmsta = FUNC2(mvm, sta_id);

	if (!mvmsta)
		ret = -ENOENT;
	else
		ret = FUNC0(mvm, mvmsta, drain) ? : count;

	FUNC4(&mvm->mutex);

	return ret;
}