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
typedef  int u32 ;
struct i40e_hw {int dummy; } ;
struct i40e_pf {struct i40e_hw hw; } ;

/* Variables and functions */
 int I40E_ITR_NONE ; 
 int /*<<< orphan*/  I40E_PFINT_DYN_CTL0 ; 
 int I40E_PFINT_DYN_CTL0_CLEARPBA_MASK ; 
 int I40E_PFINT_DYN_CTL0_INTENA_MASK ; 
 int I40E_PFINT_DYN_CTL0_ITR_INDX_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct i40e_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_hw*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct i40e_pf *pf)
{
	struct i40e_hw *hw = &pf->hw;
	u32 val;

	val = I40E_PFINT_DYN_CTL0_INTENA_MASK   |
	      I40E_PFINT_DYN_CTL0_CLEARPBA_MASK |
	      (I40E_ITR_NONE << I40E_PFINT_DYN_CTL0_ITR_INDX_SHIFT);

	FUNC1(hw, I40E_PFINT_DYN_CTL0, val);
	FUNC0(hw);
}