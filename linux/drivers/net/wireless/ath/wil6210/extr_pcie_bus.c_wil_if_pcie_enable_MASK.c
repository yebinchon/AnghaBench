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
struct wil6210_priv {int n_msi; int /*<<< orphan*/  mutex; struct pci_dev* pdev; } ;
struct pci_dev {int msi_enabled; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  PCI_IRQ_MSI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int n_msi ; 
 int FUNC2 (struct pci_dev*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 scalar_t__ FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct wil6210_priv*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct wil6210_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct wil6210_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct wil6210_priv*,char*,...) ; 
 int FUNC11 (struct wil6210_priv*,int) ; 

__attribute__((used)) static int FUNC12(struct wil6210_priv *wil)
{
	struct pci_dev *pdev = wil->pdev;
	int rc;
	/* on platforms with buggy ACPI, pdev->msi_enabled may be set to
	 * allow pci_enable_device to work. This indicates INTx was not routed
	 * and only MSI should be used
	 */
	int msi_only = pdev->msi_enabled;

	FUNC9(wil, "if_pcie_enable\n");

	FUNC6(pdev);

	/* how many MSI interrupts to request? */
	switch (n_msi) {
	case 3:
	case 1:
		FUNC9(wil, "Setup %d MSI interrupts\n", n_msi);
		break;
	case 0:
		FUNC9(wil, "MSI interrupts disabled, use INTx\n");
		break;
	default:
		FUNC10(wil, "Invalid n_msi=%d, default to 1\n", n_msi);
		n_msi = 1;
	}

	if (n_msi == 3 &&
	    FUNC2(pdev, n_msi, n_msi, PCI_IRQ_MSI) < n_msi) {
		FUNC10(wil, "3 MSI mode failed, try 1 MSI\n");
		n_msi = 1;
	}

	if (n_msi == 1 && FUNC4(pdev)) {
		FUNC10(wil, "pci_enable_msi failed, use INTx\n");
		n_msi = 0;
	}

	wil->n_msi = n_msi;

	if (wil->n_msi == 0 && msi_only) {
		FUNC10(wil, "Interrupt pin not routed, unable to use INTx\n");
		rc = -ENODEV;
		goto stop_master;
	}

	rc = FUNC8(wil, pdev->irq);
	if (rc)
		goto release_vectors;

	/* need reset here to obtain MAC */
	FUNC0(&wil->mutex);
	rc = FUNC11(wil, false);
	FUNC1(&wil->mutex);
	if (rc)
		goto release_irq;

	return 0;

 release_irq:
	FUNC7(wil, pdev->irq);
 release_vectors:
	/* safe to call if no allocation */
	FUNC5(pdev);
 stop_master:
	FUNC3(pdev);
	return rc;
}