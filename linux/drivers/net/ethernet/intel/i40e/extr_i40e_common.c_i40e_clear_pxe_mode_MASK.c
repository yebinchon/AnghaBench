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
struct i40e_hw {scalar_t__ revision_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_GLLAN_RCTL_0 ; 
 int I40E_GLLAN_RCTL_0_PXE_MODE_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct i40e_hw*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct i40e_hw*) ; 
 int FUNC2 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_hw*,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct i40e_hw *hw)
{
	u32 reg;

	if (FUNC1(hw))
		FUNC0(hw, NULL);

	/* Clear single descriptor fetch/write-back mode */
	reg = FUNC2(hw, I40E_GLLAN_RCTL_0);

	if (hw->revision_id == 0) {
		/* As a work around clear PXE_MODE instead of setting it */
		FUNC3(hw, I40E_GLLAN_RCTL_0, (reg & (~I40E_GLLAN_RCTL_0_PXE_MODE_MASK)));
	} else {
		FUNC3(hw, I40E_GLLAN_RCTL_0, (reg | I40E_GLLAN_RCTL_0_PXE_MODE_MASK));
	}
}