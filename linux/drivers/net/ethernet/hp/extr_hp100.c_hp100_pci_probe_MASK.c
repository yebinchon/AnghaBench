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
typedef  int u_short ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct hp100_private {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HP100_BUS_PCI ; 
 int /*<<< orphan*/  PCI_COMMAND ; 
 int PCI_COMMAND_IO ; 
 int PCI_COMMAND_MASTER ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int FUNC3 (struct net_device*,int,int /*<<< orphan*/ ,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 scalar_t__ FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int FUNC7 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int FUNC11(struct pci_dev *pdev,
			   const struct pci_device_id *ent)
{
	struct net_device *dev;
	int ioaddr;
	u_short pci_command;
	int err;

	if (FUNC5(pdev))
		return -ENODEV;

	dev = FUNC1(sizeof(struct hp100_private));
	if (!dev) {
		err = -ENOMEM;
		goto out0;
	}

	FUNC0(dev, &pdev->dev);

	FUNC6(pdev, PCI_COMMAND, &pci_command);
	if (!(pci_command & PCI_COMMAND_IO)) {
#ifdef HP100_DEBUG
		printk("hp100: %s: PCI I/O Bit has not been set. Setting...\n", dev->name);
#endif
		pci_command |= PCI_COMMAND_IO;
		FUNC9(pdev, PCI_COMMAND, pci_command);
	}

	if (!(pci_command & PCI_COMMAND_MASTER)) {
#ifdef HP100_DEBUG
		printk("hp100: %s: PCI Master Bit has not been set. Setting...\n", dev->name);
#endif
		pci_command |= PCI_COMMAND_MASTER;
		FUNC9(pdev, PCI_COMMAND, pci_command);
	}

	ioaddr = FUNC7(pdev, 0);
	err = FUNC3(dev, ioaddr, HP100_BUS_PCI, pdev);
	if (err)
		goto out1;

#ifdef HP100_DEBUG
	printk("hp100: %s: PCI adapter found at 0x%x\n", dev->name, ioaddr);
#endif
	FUNC8(pdev, dev);
	return 0;
 out1:
	FUNC2(dev);
 out0:
	FUNC4(pdev);
	return err;
}