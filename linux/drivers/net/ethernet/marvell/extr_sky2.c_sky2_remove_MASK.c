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
struct sky2_status_le {int dummy; } ;
struct sky2_hw {int ports; int flags; int st_size; int /*<<< orphan*/  regs; int /*<<< orphan*/ * dev; int /*<<< orphan*/  st_dma; int /*<<< orphan*/  st_le; int /*<<< orphan*/  napi; int /*<<< orphan*/  restart_work; int /*<<< orphan*/  watchdog_timer; } ;
struct pci_dev {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  B0_CTST ; 
 int /*<<< orphan*/  B0_IMSK ; 
 int /*<<< orphan*/  CS_RST_SET ; 
 int SKY2_HW_USE_MSI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sky2_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sky2_hw*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sky2_hw* FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct sky2_hw*) ; 
 int /*<<< orphan*/  FUNC13 (struct sky2_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sky2_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct sky2_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct sky2_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18(struct pci_dev *pdev)
{
	struct sky2_hw *hw = FUNC10(pdev);
	int i;

	if (!hw)
		return;

	FUNC1(&hw->watchdog_timer);
	FUNC0(&hw->restart_work);

	for (i = hw->ports-1; i >= 0; --i)
		FUNC17(hw->dev[i]);

	FUNC15(hw, B0_IMSK, 0);
	FUNC13(hw, B0_IMSK);

	FUNC12(hw);

	FUNC16(hw, B0_CTST, CS_RST_SET);
	FUNC14(hw, B0_CTST);

	if (hw->ports > 1) {
		FUNC6(&hw->napi);
		FUNC2(pdev->irq, hw);
	}

	if (hw->flags & SKY2_HW_USE_MSI)
		FUNC8(pdev);
	FUNC9(pdev, hw->st_size * sizeof(struct sky2_status_le),
			    hw->st_le, hw->st_dma);
	FUNC11(pdev);
	FUNC7(pdev);

	for (i = hw->ports-1; i >= 0; --i)
		FUNC3(hw->dev[i]);

	FUNC4(hw->regs);
	FUNC5(hw);
}