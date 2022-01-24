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
struct pci_dev {int dummy; } ;
struct alx_hw {int /*<<< orphan*/  hw_addr; int /*<<< orphan*/  perm_addr; } ;
struct alx_priv {int /*<<< orphan*/  dev; int /*<<< orphan*/  reset_wk; int /*<<< orphan*/  link_check_wk; struct alx_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct alx_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct alx_priv* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct pci_dev *pdev)
{
	struct alx_priv *alx = FUNC6(pdev);
	struct alx_hw *hw = &alx->hw;

	FUNC1(&alx->link_check_wk);
	FUNC1(&alx->reset_wk);

	/* restore permanent mac address */
	FUNC0(hw, hw->perm_addr);

	FUNC8(alx->dev);
	FUNC3(hw->hw_addr);
	FUNC7(pdev);

	FUNC5(pdev);
	FUNC4(pdev);

	FUNC2(alx->dev);
}