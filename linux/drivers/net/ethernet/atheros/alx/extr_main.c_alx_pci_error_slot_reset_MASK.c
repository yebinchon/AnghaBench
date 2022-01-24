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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct alx_hw {int dummy; } ;
struct alx_priv {struct alx_hw hw; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 int /*<<< orphan*/  FUNC0 (struct alx_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct alx_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (struct pci_dev*) ; 
 struct alx_priv* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static pci_ers_result_t FUNC9(struct pci_dev *pdev)
{
	struct alx_priv *alx = FUNC5(pdev);
	struct alx_hw *hw = &alx->hw;
	pci_ers_result_t rc = PCI_ERS_RESULT_DISCONNECT;

	FUNC3(&pdev->dev, "pci error slot reset\n");

	FUNC7();

	if (FUNC4(pdev)) {
		FUNC2(&pdev->dev, "Failed to re-enable PCI device after reset\n");
		goto out;
	}

	FUNC6(pdev);

	FUNC1(hw);
	if (!FUNC0(hw))
		rc = PCI_ERS_RESULT_RECOVERED;
out:
	FUNC8();

	return rc;
}