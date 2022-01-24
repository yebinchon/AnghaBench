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
struct ef4_nic {TYPE_1__* type; int /*<<< orphan*/  pci_dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* reset ) (struct ef4_nic*,int /*<<< orphan*/ ) ;int (* init ) (struct ef4_nic*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_D0 ; 
 int /*<<< orphan*/  RESET_TYPE_ALL ; 
 int FUNC0 (struct device*) ; 
 int FUNC1 (struct pci_dev*) ; 
 struct ef4_nic* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ef4_nic*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ef4_nic*) ; 
 struct pci_dev* FUNC8 (struct device*) ; 

__attribute__((used)) static int FUNC9(struct device *dev)
{
	struct pci_dev *pci_dev = FUNC8(dev);
	struct ef4_nic *efx = FUNC2(pci_dev);
	int rc;

	rc = FUNC5(pci_dev, PCI_D0);
	if (rc)
		return rc;
	FUNC3(pci_dev);
	rc = FUNC1(pci_dev);
	if (rc)
		return rc;
	FUNC4(efx->pci_dev);
	rc = efx->type->reset(efx, RESET_TYPE_ALL);
	if (rc)
		return rc;
	rc = efx->type->init(efx);
	if (rc)
		return rc;
	rc = FUNC0(dev);
	return rc;
}