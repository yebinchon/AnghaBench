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
struct iwl_mvm {int disable_power_off; int disable_power_off_d3; int /*<<< orphan*/  mutex; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t EIO ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*) ; 
 int FUNC1 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC6(struct iwl_mvm *mvm, char *buf,
						 size_t count, loff_t *ppos)
{
	int ret, val;

	if (!FUNC0(mvm))
		return -EIO;

	if (!FUNC5("disable_power_off_d0=", buf, 21)) {
		if (FUNC4(buf + 21, "%d", &val) != 1)
			return -EINVAL;
		mvm->disable_power_off = val;
	} else if (!FUNC5("disable_power_off_d3=", buf, 21)) {
		if (FUNC4(buf + 21, "%d", &val) != 1)
			return -EINVAL;
		mvm->disable_power_off_d3 = val;
	} else {
		return -EINVAL;
	}

	FUNC2(&mvm->mutex);
	ret = FUNC1(mvm);
	FUNC3(&mvm->mutex);

	return ret ?: count;
}