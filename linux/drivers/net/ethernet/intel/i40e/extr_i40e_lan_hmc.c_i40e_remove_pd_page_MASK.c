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
typedef  int /*<<< orphan*/  u32 ;
struct i40e_hw {int dummy; } ;
struct i40e_hmc_info {int dummy; } ;
typedef  int /*<<< orphan*/  i40e_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i40e_hmc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_hw*,struct i40e_hmc_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static i40e_status FUNC2(struct i40e_hw *hw,
						 struct i40e_hmc_info *hmc_info,
						 u32 idx)
{
	i40e_status ret_code = 0;

	if (!FUNC0(hmc_info, idx))
		ret_code = FUNC1(hw, hmc_info, idx, true);

	return ret_code;
}