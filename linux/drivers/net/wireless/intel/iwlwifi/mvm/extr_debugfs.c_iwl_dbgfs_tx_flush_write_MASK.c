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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {scalar_t__ cur_fw_img; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; TYPE_1__ fwrt; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ IWL_UCODE_REGULAR ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*) ; 
 scalar_t__ FUNC2 (struct iwl_mvm*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct iwl_mvm*) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC8(struct iwl_mvm *mvm, char *buf,
					size_t count, loff_t *ppos)
{
	int ret;
	u32 flush_arg;

	if (!FUNC1(mvm) ||
	    mvm->fwrt.cur_fw_img != IWL_UCODE_REGULAR)
		return -EIO;

	if (FUNC5(buf, 0, &flush_arg))
		return -EINVAL;

	if (FUNC4(mvm)) {
		FUNC0(mvm,
				    "FLUSHING all tids queues on sta_id = %d\n",
				    flush_arg);
		FUNC6(&mvm->mutex);
		ret = FUNC2(mvm, flush_arg, 0xFF, 0) ? : count;
		FUNC7(&mvm->mutex);
		return ret;
	}

	FUNC0(mvm, "FLUSHING queues mask to flush = 0x%x\n",
			    flush_arg);

	FUNC6(&mvm->mutex);
	ret =  FUNC3(mvm, flush_arg, 0) ? : count;
	FUNC7(&mvm->mutex);

	return ret;
}