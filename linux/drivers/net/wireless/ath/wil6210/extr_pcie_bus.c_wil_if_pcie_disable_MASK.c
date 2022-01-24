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
struct wil6210_priv {struct pci_dev* pdev; } ;
struct pci_dev {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct wil6210_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wil6210_priv*,char*) ; 

__attribute__((used)) static int FUNC4(struct wil6210_priv *wil)
{
	struct pci_dev *pdev = wil->pdev;

	FUNC3(wil, "if_pcie_disable\n");

	FUNC0(pdev);
	/* disable and release IRQ */
	FUNC2(wil, pdev->irq);
	/* safe to call if no MSI */
	FUNC1(pdev);
	/* TODO: disable HW */

	return 0;
}