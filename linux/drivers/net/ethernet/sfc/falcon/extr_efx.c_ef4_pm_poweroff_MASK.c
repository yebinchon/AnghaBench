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
struct pci_dev {int dummy; } ;
struct ef4_nic {scalar_t__ reset_pending; TYPE_1__* type; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* fini ) (struct ef4_nic*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_D3hot ; 
 struct ef4_nic* FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ef4_nic*) ; 
 struct pci_dev* FUNC4 (struct device*) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	struct pci_dev *pci_dev = FUNC4(dev);
	struct ef4_nic *efx = FUNC0(pci_dev);

	efx->type->fini(efx);

	efx->reset_pending = 0;

	FUNC1(pci_dev);
	return FUNC2(pci_dev, PCI_D3hot);
}