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
struct pci_dev {int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct ilo_hwinfo {TYPE_1__ cdev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct ilo_hwinfo*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct ilo_hwinfo*) ; 
 int /*<<< orphan*/  ilo_class ; 
 int /*<<< orphan*/  FUNC6 (struct ilo_hwinfo*) ; 
 scalar_t__* ilo_hwdev ; 
 int /*<<< orphan*/  ilo_major ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,struct ilo_hwinfo*) ; 
 int /*<<< orphan*/  FUNC8 (struct ilo_hwinfo*) ; 
 int max_ccb ; 
 struct ilo_hwinfo* FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC11(struct pci_dev *pdev)
{
	int i, minor;
	struct ilo_hwinfo *ilo_hw = FUNC9(pdev);

	if (!ilo_hw)
		return;

	FUNC3(ilo_hw);

	minor = FUNC0(ilo_hw->cdev.dev);
	for (i = minor; i < minor + max_ccb; i++)
		FUNC4(ilo_class, FUNC1(ilo_major, i));

	FUNC2(&ilo_hw->cdev);
	FUNC6(ilo_hw);
	FUNC5(pdev->irq, ilo_hw);
	FUNC7(pdev, ilo_hw);
	FUNC10(pdev);
	/*
	 * pci_disable_device(pdev) used to be here. But this PCI device has
	 * two functions with interrupt lines connected to a single pin. The
	 * other one is a USB host controller. So when we disable the PIN here
	 * e.g. by rmmod hpilo, the controller stops working. It is because
	 * the interrupt link is disabled in ACPI since it is not refcounted
	 * yet. See acpi_pci_link_free_irq called from acpi_pci_irq_disable.
	 */
	FUNC8(ilo_hw);
	ilo_hwdev[(minor / max_ccb)] = 0;
}