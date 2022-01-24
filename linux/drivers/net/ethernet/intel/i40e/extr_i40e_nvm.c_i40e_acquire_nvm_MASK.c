#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct TYPE_4__ {int /*<<< orphan*/  asq_last_status; } ;
struct TYPE_3__ {scalar_t__ hw_semaphore_timeout; scalar_t__ blank_nvm_mode; } ;
struct i40e_hw {TYPE_2__ aq; TYPE_1__ nvm; } ;
typedef  scalar_t__ i40e_status ;
typedef  enum i40e_aq_resource_access_type { ____Placeholder_i40e_aq_resource_access_type } i40e_aq_resource_access_type ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_DEBUG_NVM ; 
 int /*<<< orphan*/  I40E_GLVFGEN_TIMER ; 
 scalar_t__ I40E_MAX_NVM_TIMEOUT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  I40E_NVM_RESOURCE_ID ; 
 scalar_t__ FUNC1 (struct i40e_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_hw*,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC3 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

i40e_status FUNC5(struct i40e_hw *hw,
				       enum i40e_aq_resource_access_type access)
{
	i40e_status ret_code = 0;
	u64 gtime, timeout;
	u64 time_left = 0;

	if (hw->nvm.blank_nvm_mode)
		goto i40e_i40e_acquire_nvm_exit;

	ret_code = FUNC1(hw, I40E_NVM_RESOURCE_ID, access,
					    0, &time_left, NULL);
	/* Reading the Global Device Timer */
	gtime = FUNC3(hw, I40E_GLVFGEN_TIMER);

	/* Store the timeout */
	hw->nvm.hw_semaphore_timeout = FUNC0(time_left) + gtime;

	if (ret_code)
		FUNC2(hw, I40E_DEBUG_NVM,
			   "NVM acquire type %d failed time_left=%llu ret=%d aq_err=%d\n",
			   access, time_left, ret_code, hw->aq.asq_last_status);

	if (ret_code && time_left) {
		/* Poll until the current NVM owner timeouts */
		timeout = FUNC0(I40E_MAX_NVM_TIMEOUT) + gtime;
		while ((gtime < timeout) && time_left) {
			FUNC4(10000, 20000);
			gtime = FUNC3(hw, I40E_GLVFGEN_TIMER);
			ret_code = FUNC1(hw,
							I40E_NVM_RESOURCE_ID,
							access, 0, &time_left,
							NULL);
			if (!ret_code) {
				hw->nvm.hw_semaphore_timeout =
					    FUNC0(time_left) + gtime;
				break;
			}
		}
		if (ret_code) {
			hw->nvm.hw_semaphore_timeout = 0;
			FUNC2(hw, I40E_DEBUG_NVM,
				   "NVM acquire timed out, wait %llu ms before trying again. status=%d aq_err=%d\n",
				   time_left, ret_code, hw->aq.asq_last_status);
		}
	}

i40e_i40e_acquire_nvm_exit:
	return ret_code;
}