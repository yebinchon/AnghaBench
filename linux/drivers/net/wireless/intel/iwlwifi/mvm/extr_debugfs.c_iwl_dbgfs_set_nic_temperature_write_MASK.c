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
struct iwl_mvm {int temperature_test; int temperature; int /*<<< orphan*/  mutex; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t EIO ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,char*,int) ; 
 int IWL_MVM_DEBUG_SET_TEMPERATURE_DISABLE ; 
 int IWL_MVM_DEBUG_SET_TEMPERATURE_MAX ; 
 int IWL_MVM_DEBUG_SET_TEMPERATURE_MIN ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*) ; 
 scalar_t__ FUNC3 (char*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC6(struct iwl_mvm *mvm,
						   char *buf, size_t count,
						   loff_t *ppos)
{
	int temperature;

	if (!FUNC1(mvm) && !mvm->temperature_test)
		return -EIO;

	if (FUNC3(buf, 10, &temperature))
		return -EINVAL;
	/* not a legal temperature */
	if ((temperature > IWL_MVM_DEBUG_SET_TEMPERATURE_MAX &&
	     temperature != IWL_MVM_DEBUG_SET_TEMPERATURE_DISABLE) ||
	    temperature < IWL_MVM_DEBUG_SET_TEMPERATURE_MIN)
		return -EINVAL;

	FUNC4(&mvm->mutex);
	if (temperature == IWL_MVM_DEBUG_SET_TEMPERATURE_DISABLE) {
		if (!mvm->temperature_test)
			goto out;

		mvm->temperature_test = false;
		/* Since we can't read the temp while awake, just set
		 * it to zero until we get the next RX stats from the
		 * firmware.
		 */
		mvm->temperature = 0;
	} else {
		mvm->temperature_test = true;
		mvm->temperature = temperature;
	}
	FUNC0(mvm, "%sabling debug set temperature (temp = %d)\n",
		       mvm->temperature_test ? "En" : "Dis" ,
		       mvm->temperature);
	/* handle the temperature change */
	FUNC2(mvm);

out:
	FUNC5(&mvm->mutex);

	return count;
}