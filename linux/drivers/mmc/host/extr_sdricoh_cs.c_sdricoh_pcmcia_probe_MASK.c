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
struct pcmcia_device {int /*<<< orphan*/  dev; int /*<<< orphan*/ * prod_id; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  PCI_DEVICE_ID_RICOH_RL5C476 ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_RICOH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,struct pcmcia_device*) ; 

__attribute__((used)) static int FUNC4(struct pcmcia_device *pcmcia_dev)
{
	struct pci_dev *pci_dev = NULL;

	FUNC1(&pcmcia_dev->dev, "Searching MMC controller for pcmcia device"
		" %s %s ...\n", pcmcia_dev->prod_id[0], pcmcia_dev->prod_id[1]);

	/* search pci cardbus bridge that contains the mmc controller */
	/* the io region is already claimed by yenta_socket... */
	while ((pci_dev =
		FUNC2(PCI_VENDOR_ID_RICOH, PCI_DEVICE_ID_RICOH_RL5C476,
			       pci_dev))) {
		/* try to init the device */
		if (!FUNC3(pci_dev, pcmcia_dev)) {
			FUNC1(&pcmcia_dev->dev, "MMC controller found\n");
			return 0;
		}

	}
	FUNC0(&pcmcia_dev->dev, "No MMC controller was found.\n");
	return -ENODEV;
}