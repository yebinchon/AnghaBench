#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_7__ {int vf_base_id; } ;
struct i40e_hw {TYPE_1__ func_caps; } ;
struct i40e_pf {int num_alloc_vfs; int /*<<< orphan*/  state; TYPE_2__* pdev; TYPE_4__* vf; int /*<<< orphan*/ * vsi; struct i40e_hw hw; } ;
struct TYPE_9__ {size_t lan_vsi_idx; int /*<<< orphan*/  vf_states; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  I40E_VF_STATE_INIT ; 
 int /*<<< orphan*/  __I40E_VF_DISABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (struct i40e_pf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC16(struct i40e_pf *pf)
{
	struct i40e_hw *hw = &pf->hw;
	u32 reg_idx, bit_idx;
	int i, tmp, vf_id;

	if (!pf->vf)
		return;
	while (FUNC12(__I40E_VF_DISABLE, pf->state))
		FUNC14(1000, 2000);

	FUNC6(pf, 0);

	/* Amortize wait time by stopping all VFs at the same time */
	for (i = 0; i < pf->num_alloc_vfs; i++) {
		if (FUNC13(I40E_VF_STATE_INIT, &pf->vf[i].vf_states))
			continue;

		FUNC7(pf->vsi[pf->vf[i].lan_vsi_idx]);
	}

	for (i = 0; i < pf->num_alloc_vfs; i++) {
		if (FUNC13(I40E_VF_STATE_INIT, &pf->vf[i].vf_states))
			continue;

		FUNC8(pf->vsi[pf->vf[i].lan_vsi_idx]);
	}

	/* Disable IOV before freeing resources. This lets any VF drivers
	 * running in the host get themselves cleaned up before we yank
	 * the carpet out from underneath their feet.
	 */
	if (!FUNC11(pf->pdev))
		FUNC10(pf->pdev);
	else
		FUNC3(&pf->pdev->dev, "VFs are assigned - not disabling SR-IOV\n");

	/* free up VF resources */
	tmp = pf->num_alloc_vfs;
	pf->num_alloc_vfs = 0;
	for (i = 0; i < tmp; i++) {
		if (FUNC13(I40E_VF_STATE_INIT, &pf->vf[i].vf_states))
			FUNC5(&pf->vf[i]);
		/* disable qp mappings */
		FUNC4(&pf->vf[i]);
	}

	FUNC9(pf->vf);
	pf->vf = NULL;

	/* This check is for when the driver is unloaded while VFs are
	 * assigned. Setting the number of VFs to 0 through sysfs is caught
	 * before this function ever gets called.
	 */
	if (!FUNC11(pf->pdev)) {
		/* Acknowledge VFLR for all VFS. Without this, VFs will fail to
		 * work correctly when SR-IOV gets re-enabled.
		 */
		for (vf_id = 0; vf_id < tmp; vf_id++) {
			reg_idx = (hw->func_caps.vf_base_id + vf_id) / 32;
			bit_idx = (hw->func_caps.vf_base_id + vf_id) % 32;
			FUNC15(hw, FUNC1(reg_idx), FUNC0(bit_idx));
		}
	}
	FUNC2(__I40E_VF_DISABLE, pf->state);
}