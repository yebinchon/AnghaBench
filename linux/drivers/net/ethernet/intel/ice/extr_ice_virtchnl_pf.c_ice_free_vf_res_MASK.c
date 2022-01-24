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
struct ice_vf {int lan_vsi_idx; int first_vector_idx; int /*<<< orphan*/  vf_states; scalar_t__ num_mac; scalar_t__ lan_vsi_num; struct ice_pf* pf; } ;
struct ice_pf {int num_vf_msix; int /*<<< orphan*/  hw; int /*<<< orphan*/ * vsi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GLINT_DYN_CTL_CLEARPBA_M ; 
 int /*<<< orphan*/  ICE_VF_STATE_INIT ; 
 int /*<<< orphan*/  ICE_VF_STATE_MC_PROMISC ; 
 int /*<<< orphan*/  ICE_VF_STATE_UC_PROMISC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ice_vf *vf)
{
	struct ice_pf *pf = vf->pf;
	int i, last_vector_idx;

	/* First, disable VF's configuration API to prevent OS from
	 * accessing the VF's VSI after it's freed or invalidated.
	 */
	FUNC1(ICE_VF_STATE_INIT, vf->vf_states);

	/* free VSI and disconnect it from the parent uplink */
	if (vf->lan_vsi_idx) {
		FUNC3(pf->vsi[vf->lan_vsi_idx]);
		vf->lan_vsi_idx = 0;
		vf->lan_vsi_num = 0;
		vf->num_mac = 0;
	}

	last_vector_idx = vf->first_vector_idx + pf->num_vf_msix - 1;
	/* Disable interrupts so that VF starts in a known state */
	for (i = vf->first_vector_idx; i <= last_vector_idx; i++) {
		FUNC4(&pf->hw, FUNC0(i), GLINT_DYN_CTL_CLEARPBA_M);
		FUNC2(&pf->hw);
	}
	/* reset some of the state variables keeping track of the resources */
	FUNC1(ICE_VF_STATE_MC_PROMISC, vf->vf_states);
	FUNC1(ICE_VF_STATE_UC_PROMISC, vf->vf_states);
}