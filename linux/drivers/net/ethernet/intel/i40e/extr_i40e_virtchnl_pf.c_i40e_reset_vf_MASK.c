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
struct i40e_vf {size_t lan_vsi_idx; int /*<<< orphan*/  vf_id; struct i40e_pf* pf; } ;
struct i40e_hw {int dummy; } ;
struct i40e_pf {int /*<<< orphan*/  state; int /*<<< orphan*/ * vsi; TYPE_1__* pdev; struct i40e_hw hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int I40E_VPGEN_VFRSTAT_VFRD_MASK ; 
 int /*<<< orphan*/  __I40E_VF_DISABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_vf*) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_vf*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 

bool FUNC10(struct i40e_vf *vf, bool flr)
{
	struct i40e_pf *pf = vf->pf;
	struct i40e_hw *hw = &pf->hw;
	bool rsd = false;
	u32 reg;
	int i;

	/* If the VFs have been disabled, this means something else is
	 * resetting the VF, so we shouldn't continue.
	 */
	if (FUNC8(__I40E_VF_DISABLE, pf->state))
		return false;

	FUNC5(vf, flr);

	/* poll VPGEN_VFRSTAT reg to make sure
	 * that reset is complete
	 */
	for (i = 0; i < 10; i++) {
		/* VF reset requires driver to first reset the VF and then
		 * poll the status register to make sure that the reset
		 * completed successfully. Due to internal HW FIFO flushes,
		 * we must wait 10ms before the register will be valid.
		 */
		FUNC9(10000, 20000);
		reg = FUNC7(hw, FUNC0(vf->vf_id));
		if (reg & I40E_VPGEN_VFRSTAT_VFRD_MASK) {
			rsd = true;
			break;
		}
	}

	if (flr)
		FUNC9(10000, 20000);

	if (!rsd)
		FUNC2(&pf->pdev->dev, "VF reset check timeout on VF %d\n",
			vf->vf_id);
	FUNC9(10000, 20000);

	/* On initial reset, we don't have any queues to disable */
	if (vf->lan_vsi_idx != 0)
		FUNC6(pf->vsi[vf->lan_vsi_idx]);

	FUNC3(vf);

	FUNC4(hw);
	FUNC1(__I40E_VF_DISABLE, pf->state);

	return true;
}