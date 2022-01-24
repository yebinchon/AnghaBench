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
struct sky2_hw {int flags; int /*<<< orphan*/  msi_wait; struct pci_dev* pdev; } ;
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  B0_CTST ; 
 int /*<<< orphan*/  B0_IMSK ; 
 int /*<<< orphan*/  CS_CL_SW_IRQ ; 
 int /*<<< orphan*/  CS_ST_SW_IRQ ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int EOPNOTSUPP ; 
 int HZ ; 
 int SKY2_HW_USE_MSI ; 
 int /*<<< orphan*/  Y2_IS_IRQ_SW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sky2_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sky2_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct sky2_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sky2_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sky2_test_intr ; 
 int /*<<< orphan*/  FUNC7 (struct sky2_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sky2_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC10(struct sky2_hw *hw)
{
	struct pci_dev *pdev = hw->pdev;
	int err;

	FUNC3(&hw->msi_wait);

	err = FUNC4(pdev->irq, sky2_test_intr, 0, DRV_NAME, hw);
	if (err) {
		FUNC0(&pdev->dev, "cannot assign irq %d\n", pdev->irq);
		return err;
	}

	FUNC7(hw, B0_IMSK, Y2_IS_IRQ_SW);

	FUNC8(hw, B0_CTST, CS_ST_SW_IRQ);
	FUNC6(hw, B0_CTST);

	FUNC9(hw->msi_wait, (hw->flags & SKY2_HW_USE_MSI), HZ/10);

	if (!(hw->flags & SKY2_HW_USE_MSI)) {
		/* MSI test failed, go back to INTx mode */
		FUNC1(&pdev->dev, "No interrupt generated using MSI, "
			 "switching to INTx mode.\n");

		err = -EOPNOTSUPP;
		FUNC8(hw, B0_CTST, CS_CL_SW_IRQ);
	}

	FUNC7(hw, B0_IMSK, 0);
	FUNC5(hw, B0_IMSK);

	FUNC2(pdev->irq, hw);

	return err;
}