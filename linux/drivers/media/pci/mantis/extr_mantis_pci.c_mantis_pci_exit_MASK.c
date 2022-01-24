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
struct pci_dev {int /*<<< orphan*/  irq; } ;
struct mantis_pci {scalar_t__ mmio; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MANTIS_NOTICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mantis_pci*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(struct mantis_pci *mantis)
{
	struct pci_dev *pdev = mantis->pdev;

	FUNC0(MANTIS_NOTICE, 1, " mem: 0x%p", mantis->mmio);
	FUNC1(pdev->irq, mantis);
	if (mantis->mmio) {
		FUNC2(mantis->mmio);
		FUNC6(FUNC5(pdev, 0),
				   FUNC4(pdev, 0));
	}

	FUNC3(pdev);
}