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
struct ice_vsi {scalar_t__ tx_mapping_mode; scalar_t__ rx_mapping_mode; } ;
struct ice_vf {size_t lan_vsi_idx; int first_vector_idx; int /*<<< orphan*/  vf_id; struct ice_pf* pf; } ;
struct ice_hw {int pf_id; } ;
struct ice_pf {int num_vf_msix; TYPE_1__* pdev; struct ice_vsi** vsi; struct ice_hw hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int GLINT_VECT2FUNC_IS_PF_M ; 
 int GLINT_VECT2FUNC_IS_PF_S ; 
 int GLINT_VECT2FUNC_PF_NUM_M ; 
 int GLINT_VECT2FUNC_PF_NUM_S ; 
 scalar_t__ ICE_VSI_MAP_CONTIG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct ice_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct ice_vf *vf)
{
	struct ice_pf *pf = vf->pf;
	struct ice_vsi *vsi;
	int first, last, v;
	struct ice_hw *hw;

	hw = &pf->hw;
	vsi = pf->vsi[vf->lan_vsi_idx];

	FUNC6(hw, FUNC1(vf->vf_id), 0);
	FUNC6(hw, FUNC2(vf->vf_id), 0);

	first = vf->first_vector_idx;
	last = first + pf->num_vf_msix - 1;
	for (v = first; v <= last; v++) {
		u32 reg;

		reg = (((1 << GLINT_VECT2FUNC_IS_PF_S) &
			GLINT_VECT2FUNC_IS_PF_M) |
		       ((hw->pf_id << GLINT_VECT2FUNC_PF_NUM_S) &
			GLINT_VECT2FUNC_PF_NUM_M));
		FUNC6(hw, FUNC0(v), reg);
	}

	if (vsi->tx_mapping_mode == ICE_VSI_MAP_CONTIG)
		FUNC6(hw, FUNC4(vf->vf_id), 0);
	else
		FUNC5(&pf->pdev->dev,
			"Scattered mode for VF Tx queues is not yet implemented\n");

	if (vsi->rx_mapping_mode == ICE_VSI_MAP_CONTIG)
		FUNC6(hw, FUNC3(vf->vf_id), 0);
	else
		FUNC5(&pf->pdev->dev,
			"Scattered mode for VF Rx queues is not yet implemented\n");
}