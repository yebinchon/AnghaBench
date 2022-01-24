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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct TYPE_3__ {size_t pci_func; } ;
struct netxen_adapter {int max_sds_rings; TYPE_2__* msix_entries; int /*<<< orphan*/  tgt_status_reg; int /*<<< orphan*/  flags; TYPE_1__ ahw; scalar_t__ rss_supported; scalar_t__ msix_supported; struct pci_dev* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  vector; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  NETXEN_NIC_MSIX_ENABLED ; 
 int /*<<< orphan*/  NETXEN_NIC_MSI_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * msi_tgt_status ; 
 int /*<<< orphan*/  FUNC2 (struct netxen_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct netxen_adapter*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int FUNC6 (struct pci_dev*,TYPE_2__*,int,int) ; 
 scalar_t__ use_msi ; 

__attribute__((used)) static int FUNC7(struct netxen_adapter *adapter,
				       int num_msix)
{
	struct pci_dev *pdev = adapter->pdev;
	u32 value;
	int err;

	if (adapter->msix_supported) {
		FUNC3(adapter, num_msix);
		err = FUNC6(pdev, adapter->msix_entries,
					    num_msix, num_msix);
		if (err > 0) {
			adapter->flags |= NETXEN_NIC_MSIX_ENABLED;
			FUNC4(pdev, 1);

			if (adapter->rss_supported)
				adapter->max_sds_rings = num_msix;

			FUNC1(&pdev->dev, "using msi-x interrupts\n");
			return 0;
		}
		/* fall through for msi */
	}

	if (use_msi && !FUNC5(pdev)) {
		value = msi_tgt_status[adapter->ahw.pci_func];
		adapter->flags |= NETXEN_NIC_MSI_ENABLED;
		adapter->tgt_status_reg = FUNC2(adapter, value);
		adapter->msix_entries[0].vector = pdev->irq;
		FUNC1(&pdev->dev, "using msi interrupts\n");
		return 0;
	}

	FUNC0(&pdev->dev, "Failed to acquire MSI-X/MSI interrupt vector\n");
	return -EIO;
}