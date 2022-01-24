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
struct i40e_vsi {int /*<<< orphan*/  state; } ;
struct i40e_pf {int flags; int num_alloc_vsi; TYPE_1__* pdev; struct i40e_vsi** vsi; int /*<<< orphan*/  hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int I40E_FLAG_DISABLE_FW_LLDP ; 
 int /*<<< orphan*/  I40E_GLGEN_RTRIG ; 
 int I40E_GLGEN_RTRIG_CORER_MASK ; 
 int I40E_GLGEN_RTRIG_GLOBR_MASK ; 
 int I40E_PF_RESET_FLAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __I40E_CORE_RESET_REQUESTED ; 
 int /*<<< orphan*/  __I40E_DOWN_REQUESTED ; 
 int /*<<< orphan*/  __I40E_GLOBAL_RESET_REQUESTED ; 
 int /*<<< orphan*/  __I40E_REINIT_REQUESTED ; 
 int /*<<< orphan*/  __I40E_VSI_DOWN ; 
 int /*<<< orphan*/  __I40E_VSI_DOWN_REQUESTED ; 
 int /*<<< orphan*/  __I40E_VSI_REINIT_REQUESTED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct i40e_pf*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void FUNC13(struct i40e_pf *pf, u32 reset_flags, bool lock_acquired)
{
	u32 val;

	FUNC1(FUNC8());


	/* do the biggest reset indicated */
	if (reset_flags & FUNC0(__I40E_GLOBAL_RESET_REQUESTED)) {

		/* Request a Global Reset
		 *
		 * This will start the chip's countdown to the actual full
		 * chip reset event, and a warning interrupt to be sent
		 * to all PFs, including the requestor.  Our handler
		 * for the warning interrupt will deal with the shutdown
		 * and recovery of the switch setup.
		 */
		FUNC2(&pf->pdev->dev, "GlobalR requested\n");
		val = FUNC9(&pf->hw, I40E_GLGEN_RTRIG);
		val |= I40E_GLGEN_RTRIG_GLOBR_MASK;
		FUNC12(&pf->hw, I40E_GLGEN_RTRIG, val);

	} else if (reset_flags & FUNC0(__I40E_CORE_RESET_REQUESTED)) {

		/* Request a Core Reset
		 *
		 * Same as Global Reset, except does *not* include the MAC/PHY
		 */
		FUNC2(&pf->pdev->dev, "CoreR requested\n");
		val = FUNC9(&pf->hw, I40E_GLGEN_RTRIG);
		val |= I40E_GLGEN_RTRIG_CORER_MASK;
		FUNC12(&pf->hw, I40E_GLGEN_RTRIG, val);
		FUNC5(&pf->hw);

	} else if (reset_flags & I40E_PF_RESET_FLAG) {

		/* Request a PF Reset
		 *
		 * Resets only the PF-specific registers
		 *
		 * This goes directly to the tear-down and rebuild of
		 * the switch, since we need to do all the recovery as
		 * for the Core Reset.
		 */
		FUNC2(&pf->pdev->dev, "PFR requested\n");
		FUNC6(pf, lock_acquired);

		FUNC3(&pf->pdev->dev,
			 pf->flags & I40E_FLAG_DISABLE_FW_LLDP ?
			 "FW LLDP is disabled\n" :
			 "FW LLDP is enabled\n");

	} else if (reset_flags & FUNC0(__I40E_REINIT_REQUESTED)) {
		int v;

		/* Find the VSI(s) that requested a re-init */
		FUNC3(&pf->pdev->dev,
			 "VSI reinit requested\n");
		for (v = 0; v < pf->num_alloc_vsi; v++) {
			struct i40e_vsi *vsi = pf->vsi[v];

			if (vsi != NULL &&
			    FUNC11(__I40E_VSI_REINIT_REQUESTED,
					       vsi->state))
				FUNC7(pf->vsi[v]);
		}
	} else if (reset_flags & FUNC0(__I40E_DOWN_REQUESTED)) {
		int v;

		/* Find the VSI(s) that needs to be brought down */
		FUNC3(&pf->pdev->dev, "VSI down requested\n");
		for (v = 0; v < pf->num_alloc_vsi; v++) {
			struct i40e_vsi *vsi = pf->vsi[v];

			if (vsi != NULL &&
			    FUNC11(__I40E_VSI_DOWN_REQUESTED,
					       vsi->state)) {
				FUNC10(__I40E_VSI_DOWN, vsi->state);
				FUNC4(vsi);
			}
		}
	} else {
		FUNC3(&pf->pdev->dev,
			 "bad reset request 0x%08x\n", reset_flags);
	}
}