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
struct TYPE_2__ {scalar_t__ va; } ;
struct i40e_hw {TYPE_1__ nvm_buff; } ;
typedef  int /*<<< orphan*/  i40e_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i40e_hw*,int) ; 
 scalar_t__ FUNC1 (struct i40e_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_hw*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_hw*) ; 

i40e_status FUNC5(struct i40e_hw *hw)
{
	i40e_status ret_code = 0;

	if (FUNC1(hw))
		FUNC0(hw, true);

	FUNC4(hw);
	FUNC3(hw);

	if (hw->nvm_buff.va)
		FUNC2(hw, &hw->nvm_buff);

	return ret_code;
}