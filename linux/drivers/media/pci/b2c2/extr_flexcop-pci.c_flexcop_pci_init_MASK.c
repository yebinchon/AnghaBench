#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct flexcop_pci {TYPE_1__* pdev; int /*<<< orphan*/  io_mem; int /*<<< orphan*/  init_state; int /*<<< orphan*/  irq_lock; } ;
struct TYPE_9__ {int /*<<< orphan*/  irq; int /*<<< orphan*/  revision; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int EIO ; 
 int /*<<< orphan*/  FC_PCI_INIT ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  flexcop_pci_isr ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,struct flexcop_pci*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct flexcop_pci*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct flexcop_pci *fc_pci)
{
	int ret;

	FUNC1("card revision %x", fc_pci->pdev->revision);

	if ((ret = FUNC3(fc_pci->pdev)) != 0)
		return ret;
	FUNC9(fc_pci->pdev);

	if ((ret = FUNC7(fc_pci->pdev, DRIVER_NAME)) != 0)
		goto err_pci_disable_device;

	fc_pci->io_mem = FUNC4(fc_pci->pdev, 0, 0x800);

	if (!fc_pci->io_mem) {
		FUNC0("cannot map io memory\n");
		ret = -EIO;
		goto err_pci_release_regions;
	}

	FUNC8(fc_pci->pdev, fc_pci);
	FUNC11(&fc_pci->irq_lock);
	if ((ret = FUNC10(fc_pci->pdev->irq, flexcop_pci_isr,
					IRQF_SHARED, DRIVER_NAME, fc_pci)) != 0)
		goto err_pci_iounmap;

	fc_pci->init_state |= FC_PCI_INIT;
	return ret;

err_pci_iounmap:
	FUNC5(fc_pci->pdev, fc_pci->io_mem);
err_pci_release_regions:
	FUNC6(fc_pci->pdev);
err_pci_disable_device:
	FUNC2(fc_pci->pdev);
	return ret;
}