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
struct ice_vf {int vf_id; int /*<<< orphan*/  vf_states; struct ice_pf* pf; } ;
struct TYPE_3__ {int vf_base_id; } ;
struct ice_hw {TYPE_1__ func_caps; } ;
struct ice_pf {TYPE_2__* pdev; struct ice_hw hw; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ICE_PCI_CIAD_WAIT_COUNT ; 
 int /*<<< orphan*/  ICE_PCI_CIAD_WAIT_DELAY_US ; 
 int /*<<< orphan*/  ICE_VF_STATE_ACTIVE ; 
 int /*<<< orphan*/  ICE_VF_STATE_INIT ; 
 int /*<<< orphan*/  PF_PCI_CIAA ; 
 int PF_PCI_CIAA_VF_NUM_S ; 
 int /*<<< orphan*/  PF_PCI_CIAD ; 
 int VF_DEVICE_STATUS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int VF_TRANS_PENDING_M ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int VPGEN_VFRTRIG_VFSWR_M ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ice_hw*) ; 
 int FUNC7 (struct ice_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ice_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC10(struct ice_vf *vf, bool is_vflr, bool is_pfr)
{
	struct ice_pf *pf = vf->pf;
	u32 reg, reg_idx, bit_idx;
	struct ice_hw *hw;
	int vf_abs_id, i;

	hw = &pf->hw;
	vf_abs_id = vf->vf_id + hw->func_caps.vf_base_id;

	/* Inform VF that it is no longer active, as a warning */
	FUNC4(ICE_VF_STATE_ACTIVE, vf->vf_states);

	/* Disable VF's configuration API during reset. The flag is re-enabled
	 * in ice_alloc_vf_res(), when it's safe again to access VF's VSI.
	 * It's normally disabled in ice_free_vf_res(), but it's safer
	 * to do it earlier to give some time to finish to any VF config
	 * functions that may still be running at this point.
	 */
	FUNC4(ICE_VF_STATE_INIT, vf->vf_states);

	/* VF_MBX_ARQLEN is cleared by PFR, so the driver needs to clear it
	 * in the case of VFR. If this is done for PFR, it can mess up VF
	 * resets because the VF driver may already have started cleanup
	 * by the time we get here.
	 */
	if (!is_pfr)
		FUNC9(hw, FUNC2(vf_abs_id), 0);

	/* In the case of a VFLR, the HW has already reset the VF and we
	 * just need to clean up, so don't hit the VFRTRIG register.
	 */
	if (!is_vflr) {
		/* reset VF using VPGEN_VFRTRIG reg */
		reg = FUNC7(hw, FUNC3(vf->vf_id));
		reg |= VPGEN_VFRTRIG_VFSWR_M;
		FUNC9(hw, FUNC3(vf->vf_id), reg);
	}
	/* clear the VFLR bit in GLGEN_VFLRSTAT */
	reg_idx = (vf_abs_id) / 32;
	bit_idx = (vf_abs_id) % 32;
	FUNC9(hw, FUNC1(reg_idx), FUNC0(bit_idx));
	FUNC6(hw);

	FUNC9(hw, PF_PCI_CIAA,
	     VF_DEVICE_STATUS | (vf_abs_id << PF_PCI_CIAA_VF_NUM_S));
	for (i = 0; i < ICE_PCI_CIAD_WAIT_COUNT; i++) {
		reg = FUNC7(hw, PF_PCI_CIAD);
		/* no transactions pending so stop polling */
		if ((reg & VF_TRANS_PENDING_M) == 0)
			break;

		FUNC5(&pf->pdev->dev,
			"VF %d PCI transactions stuck\n", vf->vf_id);
		FUNC8(ICE_PCI_CIAD_WAIT_DELAY_US);
	}
}