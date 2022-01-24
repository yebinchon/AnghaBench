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
typedef  int /*<<< orphan*/  i40e_status ;

/* Variables and functions */
 int I40E_HW_FLAG_AQ_SRCTL_ACCESS_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static i40e_status FUNC2(struct i40e_hw *hw,
					u16 offset, u16 *data)
{
	if (hw->flags & I40E_HW_FLAG_AQ_SRCTL_ACCESS_ENABLE)
		return FUNC0(hw, offset, data);

	return FUNC1(hw, offset, data);
}