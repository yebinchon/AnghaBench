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
struct pci_dev {int dummy; } ;
struct i40e_hw {int dummy; } ;
struct i40e_pf {size_t lan_vsi; int hw_features; int flags; scalar_t__ wol_en; TYPE_1__* pdev; int /*<<< orphan*/  state; int /*<<< orphan*/ * vsi; int /*<<< orphan*/  service_task; int /*<<< orphan*/  service_timer; struct i40e_hw hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int I40E_FLAG_MSIX_ENABLED ; 
 int I40E_HW_WOL_MC_MAGIC_PKT_WAKE ; 
 int /*<<< orphan*/  I40E_PFPM_APM ; 
 int /*<<< orphan*/  I40E_PFPM_APM_APME_MASK ; 
 int /*<<< orphan*/  I40E_PFPM_WUFC ; 
 int /*<<< orphan*/  I40E_PFPM_WUFC_MAG_MASK ; 
 int /*<<< orphan*/  PCI_D3hot ; 
 scalar_t__ SYSTEM_POWER_OFF ; 
 int /*<<< orphan*/  __I40E_DOWN ; 
 int /*<<< orphan*/  __I40E_RECOVERY_MODE ; 
 int /*<<< orphan*/  __I40E_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct i40e_pf*) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_pf*) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_pf*) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_pf*) ; 
 int /*<<< orphan*/  FUNC6 (struct i40e_pf*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct i40e_pf*,int) ; 
 struct i40e_pf* FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ system_state ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC17(struct pci_dev *pdev)
{
	struct i40e_pf *pf = FUNC9(pdev);
	struct i40e_hw *hw = &pf->hw;

	FUNC14(__I40E_SUSPENDED, pf->state);
	FUNC14(__I40E_DOWN, pf->state);

	FUNC1(&pf->service_timer);
	FUNC0(&pf->service_task);
	FUNC4(pf);
	FUNC6(pf);

	/* Client close must be called explicitly here because the timer
	 * has been stopped.
	 */
	FUNC7(pf->vsi[pf->lan_vsi], false);

	if (pf->wol_en && (pf->hw_features & I40E_HW_WOL_MC_MAGIC_PKT_WAKE))
		FUNC5(pf);

	FUNC8(pf, false);

	FUNC16(hw, I40E_PFPM_APM,
	     (pf->wol_en ? I40E_PFPM_APM_APME_MASK : 0));
	FUNC16(hw, I40E_PFPM_WUFC,
	     (pf->wol_en ? I40E_PFPM_WUFC_MAG_MASK : 0));

	/* Free MSI/legacy interrupt 0 when in recovery mode. */
	if (FUNC15(__I40E_RECOVERY_MODE, pf->state) &&
	    !(pf->flags & I40E_FLAG_MSIX_ENABLED))
		FUNC2(pf->pdev->irq, pf);

	/* Since we're going to destroy queues during the
	 * i40e_clear_interrupt_scheme() we should hold the RTNL lock for this
	 * whole section
	 */
	FUNC12();
	FUNC3(pf);
	FUNC13();

	if (system_state == SYSTEM_POWER_OFF) {
		FUNC11(pdev, pf->wol_en);
		FUNC10(pdev, PCI_D3hot);
	}
}