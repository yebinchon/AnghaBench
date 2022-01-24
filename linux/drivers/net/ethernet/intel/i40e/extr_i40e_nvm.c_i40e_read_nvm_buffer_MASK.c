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
typedef  int /*<<< orphan*/  u16 ;
struct i40e_hw {int flags; } ;
typedef  scalar_t__ i40e_status ;

/* Variables and functions */
 int I40E_HW_FLAG_AQ_SRCTL_ACCESS_ENABLE ; 
 int /*<<< orphan*/  I40E_RESOURCE_READ ; 
 scalar_t__ FUNC0 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_hw*) ; 

i40e_status FUNC4(struct i40e_hw *hw, u16 offset,
				 u16 *words, u16 *data)
{
	i40e_status ret_code = 0;

	if (hw->flags & I40E_HW_FLAG_AQ_SRCTL_ACCESS_ENABLE) {
		ret_code = FUNC0(hw, I40E_RESOURCE_READ);
		if (!ret_code) {
			ret_code = FUNC1(hw, offset, words,
							   data);
			FUNC3(hw);
		}
	} else {
		ret_code = FUNC2(hw, offset, words, data);
	}

	return ret_code;
}