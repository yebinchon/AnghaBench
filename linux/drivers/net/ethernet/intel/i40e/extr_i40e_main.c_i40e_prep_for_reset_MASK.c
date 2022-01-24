#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct TYPE_5__ {scalar_t__ hmc_obj; } ;
struct i40e_hw {TYPE_2__ hmc; } ;
struct i40e_pf {size_t num_alloc_vsi; TYPE_3__* pdev; struct i40e_hw hw; TYPE_1__** vsi; int /*<<< orphan*/  state; } ;
typedef  scalar_t__ i40e_status ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {scalar_t__ seid; } ;

/* Variables and functions */
 int /*<<< orphan*/  __I40E_RESET_INTR_RECEIVED ; 
 int /*<<< orphan*/  __I40E_RESET_RECOVERY_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct i40e_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_pf*) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_pf*) ; 
 int /*<<< orphan*/  FUNC6 (struct i40e_hw*) ; 
 scalar_t__ FUNC7 (struct i40e_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct i40e_pf*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct i40e_pf *pf, bool lock_acquired)
{
	struct i40e_hw *hw = &pf->hw;
	i40e_status ret = 0;
	u32 v;

	FUNC0(__I40E_RESET_INTR_RECEIVED, pf->state);
	if (FUNC11(__I40E_RESET_RECOVERY_PENDING, pf->state))
		return;
	if (FUNC3(&pf->hw))
		FUNC8(pf);

	FUNC1(&pf->pdev->dev, "Tearing down internal switch for reset\n");

	/* quiesce the VSIs and their queues that are not already DOWN */
	/* pf_quiesce_all_vsi modifies netdev structures -rtnl_lock needed */
	if (!lock_acquired)
		FUNC9();
	FUNC4(pf);
	if (!lock_acquired)
		FUNC10();

	for (v = 0; v < pf->num_alloc_vsi; v++) {
		if (pf->vsi[v])
			pf->vsi[v]->seid = 0;
	}

	FUNC6(&pf->hw);

	/* call shutdown HMC */
	if (hw->hmc.hmc_obj) {
		ret = FUNC7(hw);
		if (ret)
			FUNC2(&pf->pdev->dev,
				 "shutdown_lan_hmc failed: %d\n", ret);
	}

	/* Save the current PTP time so that we can restore the time after the
	 * reset completes.
	 */
	FUNC5(pf);
}