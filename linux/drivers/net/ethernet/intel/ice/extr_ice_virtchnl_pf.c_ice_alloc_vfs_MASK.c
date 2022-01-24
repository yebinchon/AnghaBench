#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct ice_vf {int vf_id; int spoofchk; int /*<<< orphan*/  vf_caps; int /*<<< orphan*/  vf_sw_id; struct ice_pf* pf; } ;
struct ice_hw {int dummy; } ;
struct ice_pf {int num_alloc_vfs; int /*<<< orphan*/ * state; TYPE_1__* pdev; struct ice_vf* vf; int /*<<< orphan*/  first_sw; int /*<<< orphan*/  oicr_idx; struct ice_hw hw; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int GLINT_DYN_CTL_ITR_INDX_S ; 
 int ICE_ITR_NONE ; 
 int /*<<< orphan*/  ICE_VIRTCHNL_VF_CAP_L2 ; 
 int /*<<< orphan*/  __ICE_OICR_INTR_DIS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ice_vf* FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ice_vf*) ; 
 int /*<<< orphan*/  FUNC4 (struct ice_pf*) ; 
 int /*<<< orphan*/  FUNC5 (struct ice_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ice_hw*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct ice_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(struct ice_pf *pf, u16 num_alloc_vfs)
{
	struct ice_hw *hw = &pf->hw;
	struct ice_vf *vfs;
	int i, ret;

	/* Disable global interrupt 0 so we don't try to handle the VFLR. */
	FUNC10(hw, FUNC0(pf->oicr_idx),
	     ICE_ITR_NONE << GLINT_DYN_CTL_ITR_INDX_S);
	FUNC9(__ICE_OICR_INTR_DIS, pf->state);
	FUNC5(hw);

	ret = FUNC8(pf->pdev, num_alloc_vfs);
	if (ret) {
		pf->num_alloc_vfs = 0;
		goto err_unroll_intr;
	}
	/* allocate memory */
	vfs = FUNC2(&pf->pdev->dev, num_alloc_vfs, sizeof(*vfs),
			   GFP_KERNEL);
	if (!vfs) {
		ret = -ENOMEM;
		goto err_pci_disable_sriov;
	}
	pf->vf = vfs;

	/* apply default profile */
	for (i = 0; i < num_alloc_vfs; i++) {
		vfs[i].pf = pf;
		vfs[i].vf_sw_id = pf->first_sw;
		vfs[i].vf_id = i;

		/* assign default capabilities */
		FUNC9(ICE_VIRTCHNL_VF_CAP_L2, &vfs[i].vf_caps);
		vfs[i].spoofchk = true;
	}
	pf->num_alloc_vfs = num_alloc_vfs;

	/* VF resources get allocated with initialization */
	if (!FUNC4(pf)) {
		ret = -EIO;
		goto err_unroll_sriov;
	}

	return ret;

err_unroll_sriov:
	pf->vf = NULL;
	FUNC3(&pf->pdev->dev, vfs);
	vfs = NULL;
	pf->num_alloc_vfs = 0;
err_pci_disable_sriov:
	FUNC7(pf->pdev);
err_unroll_intr:
	/* rearm interrupts here */
	FUNC6(hw, NULL, NULL);
	FUNC1(__ICE_OICR_INTR_DIS, pf->state);
	return ret;
}