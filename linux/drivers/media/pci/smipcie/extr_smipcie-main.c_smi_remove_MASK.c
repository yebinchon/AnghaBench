#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct smi_dev {int /*<<< orphan*/  lmmio; int /*<<< orphan*/ * ts_port; TYPE_1__* info; TYPE_2__* pci_dev; } ;
struct pci_dev {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq; } ;
struct TYPE_3__ {scalar_t__ ts_0; scalar_t__ ts_1; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_INT ; 
 int /*<<< orphan*/  MSI_INT_ENA_CLR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct smi_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct smi_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 struct smi_dev* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct smi_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct smi_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct pci_dev *pdev)
{
	struct smi_dev *dev = FUNC5(pdev);

	FUNC10(MSI_INT_ENA_CLR, ALL_INT);
	FUNC0(dev->pci_dev->irq, dev);
#ifdef CONFIG_PCI_MSI
	pci_disable_msi(dev->pci_dev);
#endif
	if (dev->info->ts_1)
		FUNC9(&dev->ts_port[1]);
	if (dev->info->ts_0)
		FUNC9(&dev->ts_port[0]);

	FUNC8(dev);
	FUNC7(dev);
	FUNC1(dev->lmmio);
	FUNC6(pdev, NULL);
	FUNC3(pdev);
	FUNC2(dev);
}