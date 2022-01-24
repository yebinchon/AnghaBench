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
struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int NETIF_MSG_PROBE ; 
 int /*<<< orphan*/  PCNET32_DMA_MASK ; 
 int /*<<< orphan*/  PCNET32_TOTAL_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int FUNC1 (struct pci_dev*) ; 
 unsigned long FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int pcnet32_debug ; 
 int FUNC5 (unsigned long,int,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC8(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	unsigned long ioaddr;
	int err;

	err = FUNC1(pdev);
	if (err < 0) {
		if (pcnet32_debug & NETIF_MSG_PROBE)
			FUNC6("failed to enable device -- err=%d\n", err);
		return err;
	}
	FUNC4(pdev);

	ioaddr = FUNC2(pdev, 0);
	if (!ioaddr) {
		if (pcnet32_debug & NETIF_MSG_PROBE)
			FUNC6("card has no PCI IO resources, aborting\n");
		err = -ENODEV;
		goto err_disable_dev;
	}

	err = FUNC3(pdev, PCNET32_DMA_MASK);
	if (err) {
		if (pcnet32_debug & NETIF_MSG_PROBE)
			FUNC6("architecture does not support 32bit PCI busmaster DMA\n");
		goto err_disable_dev;
	}
	if (!FUNC7(ioaddr, PCNET32_TOTAL_SIZE, "pcnet32_probe_pci")) {
		if (pcnet32_debug & NETIF_MSG_PROBE)
			FUNC6("io address range already allocated\n");
		err = -EBUSY;
		goto err_disable_dev;
	}

	err = FUNC5(ioaddr, 1, pdev);

err_disable_dev:
	if (err < 0)
		FUNC0(pdev);

	return err;
}