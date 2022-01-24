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
typedef  int /*<<< orphan*/  u32 ;
struct i40e_vf {int vf_id; scalar_t__ num_vlan; int /*<<< orphan*/  vf_states; int /*<<< orphan*/  lan_vsi_id; struct i40e_pf* pf; } ;
struct TYPE_2__ {int vf_base_id; } ;
struct i40e_hw {TYPE_1__ func_caps; } ;
struct i40e_pf {struct i40e_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  I40E_VF_STATE_ACTIVE ; 
 int /*<<< orphan*/  I40E_VF_STATE_DISABLED ; 
 int /*<<< orphan*/  I40E_VF_STATE_PRE_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  I40E_VPGEN_VFRTRIG_VFSWR_MASK ; 
 int /*<<< orphan*/  VIRTCHNL_VFR_VFACTIVE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_vf*) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_vf*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_vf*) ; 
 int /*<<< orphan*/  FUNC6 (struct i40e_vf*) ; 
 int /*<<< orphan*/  FUNC7 (struct i40e_pf*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct i40e_vf *vf)
{
	struct i40e_pf *pf = vf->pf;
	struct i40e_hw *hw = &pf->hw;
	u32 reg;

	/* disable promisc modes in case they were enabled */
	FUNC4(vf, vf->lan_vsi_id, false, false);

	/* free VF resources to begin resetting the VSI state */
	FUNC6(vf);

	/* Enable hardware by clearing the reset bit in the VPGEN_VFRTRIG reg.
	 * By doing this we allow HW to access VF memory at any point. If we
	 * did it any sooner, HW could access memory while it was being freed
	 * in i40e_free_vf_res(), causing an IOMMU fault.
	 *
	 * On the other hand, this needs to be done ASAP, because the VF driver
	 * is waiting for this to happen and may report a timeout. It's
	 * harmless, but it gets logged into Guest OS kernel log, so best avoid
	 * it.
	 */
	reg = FUNC8(hw, FUNC1(vf->vf_id));
	reg &= ~I40E_VPGEN_VFRTRIG_VFSWR_MASK;
	FUNC11(hw, FUNC1(vf->vf_id), reg);

	/* reallocate VF resources to finish resetting the VSI state */
	if (!FUNC3(vf)) {
		int abs_vf_id = vf->vf_id + hw->func_caps.vf_base_id;
		FUNC5(vf);
		FUNC9(I40E_VF_STATE_ACTIVE, &vf->vf_states);
		FUNC2(I40E_VF_STATE_DISABLED, &vf->vf_states);
		/* Do not notify the client during VF init */
		if (!FUNC10(I40E_VF_STATE_PRE_ENABLE,
					&vf->vf_states))
			FUNC7(pf, abs_vf_id);
		vf->num_vlan = 0;
	}

	/* Tell the VF driver the reset is done. This needs to be done only
	 * after VF has been fully initialized, because the VF driver may
	 * request resources immediately after setting this flag.
	 */
	FUNC11(hw, FUNC0(vf->vf_id), VIRTCHNL_VFR_VFACTIVE);
}