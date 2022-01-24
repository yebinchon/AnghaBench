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
struct ice_vf {int /*<<< orphan*/  vf_id; scalar_t__ num_vlan; int /*<<< orphan*/  vf_states; struct ice_pf* pf; } ;
struct ice_hw {int dummy; } ;
struct ice_pf {struct ice_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICE_VF_STATE_ACTIVE ; 
 int /*<<< orphan*/  ICE_VF_STATE_DIS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VIRTCHNL_VFR_VFACTIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VPGEN_VFRTRIG_VFSWR_M ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ice_vf*) ; 
 int /*<<< orphan*/  FUNC4 (struct ice_vf*) ; 
 int /*<<< orphan*/  FUNC5 (struct ice_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ice_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct ice_vf *vf)
{
	struct ice_pf *pf = vf->pf;
	struct ice_hw *hw;
	u32 reg;

	hw = &pf->hw;

	/* PF software completes the flow by notifying VF that reset flow is
	 * completed. This is done by enabling hardware by clearing the reset
	 * bit in the VPGEN_VFRTRIG reg and setting VFR_STATE in the VFGEN_RSTAT
	 * register to VFR completed (done at the end of this function)
	 * By doing this we allow HW to access VF memory at any point. If we
	 * did it any sooner, HW could access memory while it was being freed
	 * in ice_free_vf_res(), causing an IOMMU fault.
	 *
	 * On the other hand, this needs to be done ASAP, because the VF driver
	 * is waiting for this to happen and may report a timeout. It's
	 * harmless, but it gets logged into Guest OS kernel log, so best avoid
	 * it.
	 */
	reg = FUNC5(hw, FUNC1(vf->vf_id));
	reg &= ~VPGEN_VFRTRIG_VFSWR_M;
	FUNC7(hw, FUNC1(vf->vf_id), reg);

	/* reallocate VF resources to finish resetting the VSI state */
	if (!FUNC3(vf)) {
		FUNC4(vf);
		FUNC6(ICE_VF_STATE_ACTIVE, vf->vf_states);
		FUNC2(ICE_VF_STATE_DIS, vf->vf_states);
		vf->num_vlan = 0;
	}

	/* Tell the VF driver the reset is done. This needs to be done only
	 * after VF has been fully initialized, because the VF driver may
	 * request resources immediately after setting this flag.
	 */
	FUNC7(hw, FUNC0(vf->vf_id), VIRTCHNL_VFR_VFACTIVE);
}