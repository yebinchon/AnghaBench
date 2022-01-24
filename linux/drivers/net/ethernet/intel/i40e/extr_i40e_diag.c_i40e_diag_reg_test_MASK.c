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
typedef  size_t u32 ;
struct TYPE_3__ {scalar_t__ num_tx_qp; scalar_t__ num_msix_vectors; } ;
struct i40e_hw {TYPE_1__ func_caps; } ;
typedef  scalar_t__ i40e_status ;
struct TYPE_4__ {scalar_t__ offset; size_t elements; size_t mask; size_t stride; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct i40e_hw*,size_t,size_t) ; 
 TYPE_2__* i40e_reg_list ; 

i40e_status FUNC5(struct i40e_hw *hw)
{
	i40e_status ret_code = 0;
	u32 reg, mask;
	u32 i, j;

	for (i = 0; i40e_reg_list[i].offset != 0 &&
					     !ret_code; i++) {

		/* set actual reg range for dynamically allocated resources */
		if (i40e_reg_list[i].offset == FUNC3(0) &&
		    hw->func_caps.num_tx_qp != 0)
			i40e_reg_list[i].elements = hw->func_caps.num_tx_qp;
		if ((i40e_reg_list[i].offset == FUNC0(0, 0) ||
		     i40e_reg_list[i].offset == FUNC0(1, 0) ||
		     i40e_reg_list[i].offset == FUNC0(2, 0) ||
		     i40e_reg_list[i].offset == FUNC2(0) ||
		     i40e_reg_list[i].offset == FUNC1(0)) &&
		    hw->func_caps.num_msix_vectors != 0)
			i40e_reg_list[i].elements =
				hw->func_caps.num_msix_vectors - 1;

		/* test register access */
		mask = i40e_reg_list[i].mask;
		for (j = 0; j < i40e_reg_list[i].elements && !ret_code; j++) {
			reg = i40e_reg_list[i].offset +
			      (j * i40e_reg_list[i].stride);
			ret_code = FUNC4(hw, reg, mask);
		}
	}

	return ret_code;
}