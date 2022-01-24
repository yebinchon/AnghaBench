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
typedef  int u32 ;
struct i40e_vf {int dummy; } ;
struct TYPE_2__ {int vf_base_id; } ;
struct i40e_hw {TYPE_1__ func_caps; } ;
struct i40e_pf {int num_alloc_vfs; struct i40e_vf* vf; int /*<<< orphan*/  state; struct i40e_hw hw; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  I40E_PFINT_ICR0_ENA ; 
 int I40E_PFINT_ICR0_ENA_VFLR_MASK ; 
 int /*<<< orphan*/  __I40E_VFLR_EVENT_PENDING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_vf*,int) ; 
 int FUNC5 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i40e_hw*,int /*<<< orphan*/ ,int) ; 

int FUNC8(struct i40e_pf *pf)
{
	struct i40e_hw *hw = &pf->hw;
	u32 reg, reg_idx, bit_idx;
	struct i40e_vf *vf;
	int vf_id;

	if (!FUNC6(__I40E_VFLR_EVENT_PENDING, pf->state))
		return 0;

	/* Re-enable the VFLR interrupt cause here, before looking for which
	 * VF got reset. Otherwise, if another VF gets a reset while the
	 * first one is being processed, that interrupt will be lost, and
	 * that VF will be stuck in reset forever.
	 */
	reg = FUNC5(hw, I40E_PFINT_ICR0_ENA);
	reg |= I40E_PFINT_ICR0_ENA_VFLR_MASK;
	FUNC7(hw, I40E_PFINT_ICR0_ENA, reg);
	FUNC3(hw);

	FUNC2(__I40E_VFLR_EVENT_PENDING, pf->state);
	for (vf_id = 0; vf_id < pf->num_alloc_vfs; vf_id++) {
		reg_idx = (hw->func_caps.vf_base_id + vf_id) / 32;
		bit_idx = (hw->func_caps.vf_base_id + vf_id) % 32;
		/* read GLGEN_VFLRSTAT register to find out the flr VFs */
		vf = &pf->vf[vf_id];
		reg = FUNC5(hw, FUNC1(reg_idx));
		if (reg & FUNC0(bit_idx))
			/* i40e_reset_vf will clear the bit in GLGEN_VFLRSTAT */
			FUNC4(vf, true);
	}

	return 0;
}