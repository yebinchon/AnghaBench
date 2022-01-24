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
struct efx_nic {int /*<<< orphan*/  filter_sem; TYPE_1__* type; int /*<<< orphan*/  pci_dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* reset ) (struct efx_nic*,int /*<<< orphan*/ ) ;int (* init ) (struct efx_nic*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_D0 ; 
 int /*<<< orphan*/  RESET_TYPE_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct device*) ; 
 int FUNC2 (struct pci_dev*) ; 
 struct efx_nic* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct efx_nic*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct efx_nic*) ; 
 struct pci_dev* FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct device *dev)
{
	struct pci_dev *pci_dev = FUNC9(dev);
	struct efx_nic *efx = FUNC3(pci_dev);
	int rc;

	rc = FUNC6(pci_dev, PCI_D0);
	if (rc)
		return rc;
	FUNC4(pci_dev);
	rc = FUNC2(pci_dev);
	if (rc)
		return rc;
	FUNC5(efx->pci_dev);
	rc = efx->type->reset(efx, RESET_TYPE_ALL);
	if (rc)
		return rc;
	FUNC0(&efx->filter_sem);
	rc = efx->type->init(efx);
	FUNC10(&efx->filter_sem);
	if (rc)
		return rc;
	rc = FUNC1(dev);
	return rc;
}