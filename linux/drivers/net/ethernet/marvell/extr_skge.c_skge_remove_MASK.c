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
struct skge_hw {int ports; int /*<<< orphan*/  regs; int /*<<< orphan*/  hw_lock; scalar_t__ intr_mask; int /*<<< orphan*/  phy_task; struct net_device** dev; } ;
struct pci_dev {int /*<<< orphan*/  irq; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B0_CTST ; 
 int /*<<< orphan*/  B0_IMSK ; 
 int /*<<< orphan*/  B0_LED ; 
 int /*<<< orphan*/  CS_RST_SET ; 
 int /*<<< orphan*/  LED_STAT_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct skge_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct skge_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 struct skge_hw* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct skge_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct skge_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct skge_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct skge_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 

__attribute__((used)) static void FUNC15(struct pci_dev *pdev)
{
	struct skge_hw *hw  = FUNC5(pdev);
	struct net_device *dev0, *dev1;

	if (!hw)
		return;

	dev1 = hw->dev[1];
	if (dev1)
		FUNC14(dev1);
	dev0 = hw->dev[0];
	FUNC14(dev0);

	FUNC13(&hw->phy_task);

	FUNC11(&hw->hw_lock);
	hw->intr_mask = 0;

	if (hw->ports > 1) {
		FUNC9(hw, B0_IMSK, 0);
		FUNC7(hw, B0_IMSK);
	}
	FUNC12(&hw->hw_lock);

	FUNC8(hw, B0_LED, LED_STAT_OFF);
	FUNC10(hw, B0_CTST, CS_RST_SET);

	if (hw->ports > 1)
		FUNC0(pdev->irq, hw);
	FUNC6(pdev);
	FUNC4(pdev);
	if (dev1)
		FUNC1(dev1);
	FUNC1(dev0);

	FUNC2(hw->regs);
	FUNC3(hw);
}