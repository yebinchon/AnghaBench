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
typedef  int u32 ;
struct i40e_vf {int vf_id; int /*<<< orphan*/  vf_states; struct i40e_pf* pf; } ;
struct TYPE_3__ {int vf_base_id; } ;
struct i40e_hw {TYPE_1__ func_caps; } ;
struct i40e_pf {TYPE_2__* pdev; struct i40e_hw hw; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  I40E_VF_STATE_ACTIVE ; 
 int /*<<< orphan*/  I40E_VF_STATE_INIT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int I40E_VPGEN_VFRTRIG_VFSWR_MASK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_hw*) ; 
 scalar_t__ FUNC6 (struct i40e_vf*) ; 
 int FUNC7 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i40e_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(struct i40e_vf *vf, bool flr)
{
	struct i40e_pf *pf = vf->pf;
	struct i40e_hw *hw = &pf->hw;
	u32 reg, reg_idx, bit_idx;

	/* warn the VF */
	FUNC3(I40E_VF_STATE_ACTIVE, &vf->vf_states);

	/* Disable VF's configuration API during reset. The flag is re-enabled
	 * in i40e_alloc_vf_res(), when it's safe again to access VF's VSI.
	 * It's normally disabled in i40e_free_vf_res(), but it's safer
	 * to do it earlier to give some time to finish to any VF config
	 * functions that may still be running at this point.
	 */
	FUNC3(I40E_VF_STATE_INIT, &vf->vf_states);

	/* In the case of a VFLR, the HW has already reset the VF and we
	 * just need to clean up, so don't hit the VFRTRIG register.
	 */
	if (!flr) {
		/* reset VF using VPGEN_VFRTRIG reg */
		reg = FUNC7(hw, FUNC2(vf->vf_id));
		reg |= I40E_VPGEN_VFRTRIG_VFSWR_MASK;
		FUNC8(hw, FUNC2(vf->vf_id), reg);
		FUNC5(hw);
	}
	/* clear the VFLR bit in GLGEN_VFLRSTAT */
	reg_idx = (hw->func_caps.vf_base_id + vf->vf_id) / 32;
	bit_idx = (hw->func_caps.vf_base_id + vf->vf_id) % 32;
	FUNC8(hw, FUNC1(reg_idx), FUNC0(bit_idx));
	FUNC5(hw);

	if (FUNC6(vf))
		FUNC4(&pf->pdev->dev, "VF %d PCI transactions stuck\n",
			vf->vf_id);
}