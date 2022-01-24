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
struct TYPE_2__ {scalar_t__ cur_fw_img; } ;
struct iwl_mvm {TYPE_1__ fwrt; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 size_t EIO ; 
 scalar_t__ IWL_UCODE_REGULAR ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*) ; 

__attribute__((used)) static ssize_t FUNC2(struct iwl_mvm *mvm, char *buf,
					    size_t count, loff_t *ppos)
{
	if (!FUNC1(mvm) ||
	    mvm->fwrt.cur_fw_img != IWL_UCODE_REGULAR)
		return -EIO;

	FUNC0(mvm);

	return count;
}