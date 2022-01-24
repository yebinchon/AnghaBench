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
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct netxen_adapter {int max_sds_rings; int flags; TYPE_1__* msix_entries; scalar_t__ rss_supported; struct pci_dev* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  vector; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ MSIX_ENTRIES_PER_ADAPTER ; 
 scalar_t__ NETXEN_INTX_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct netxen_adapter*) ; 
 scalar_t__ NETXEN_MSI_MODE ; 
 int NETXEN_NIC_MSIX_ENABLED ; 
 int NETXEN_NIC_MSI_ENABLED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (struct pci_dev*) ; 
 scalar_t__ FUNC4 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct netxen_adapter*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct netxen_adapter*,int) ; 
 scalar_t__ FUNC9 () ; 

__attribute__((used)) static int FUNC10(struct netxen_adapter *adapter)
{
	struct pci_dev *pdev = adapter->pdev;
	int num_msix;

	if (adapter->rss_supported)
		num_msix = (FUNC9() >= MSIX_ENTRIES_PER_ADAPTER) ?
			    MSIX_ENTRIES_PER_ADAPTER : 2;
	else
		num_msix = 1;

	adapter->max_sds_rings = 1;
	adapter->flags &= ~(NETXEN_NIC_MSI_ENABLED | NETXEN_NIC_MSIX_ENABLED);

	FUNC5(adapter);
	FUNC7(pdev, 0);

	if (FUNC3(pdev)) {
		if (!FUNC8(adapter, num_msix))
			FUNC6(adapter, NETXEN_MSI_MODE);
		else
			FUNC6(adapter, NETXEN_INTX_MODE);
	} else {
		if (FUNC4(adapter) == NETXEN_MSI_MODE &&
		    FUNC8(adapter, num_msix)) {
			FUNC1(&pdev->dev, "Co-existence of MSI-X/MSI and INTx interrupts is not supported\n");
			return -EIO;
		}
	}

	if (!FUNC0(adapter)) {
		adapter->msix_entries[0].vector = pdev->irq;
		FUNC2(&pdev->dev, "using legacy interrupts\n");
	}
	return 0;
}