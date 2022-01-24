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
typedef  int u16 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_COMMAND ; 
 int PCI_COMMAND_INTX_DISABLE ; 
 int PCI_COMMAND_MASTER ; 
 int PCI_COMMAND_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct pci_dev *dev)
{
	u16 pci_command;
	int r = FUNC1(dev);

	if (r) {
		FUNC0(&dev->dev, "failed to enable MSI (%d)\n", r);
		return r;
	}

	FUNC2(dev, PCI_COMMAND, &pci_command);
	pci_command |= PCI_COMMAND_MEMORY | PCI_COMMAND_MASTER |
		PCI_COMMAND_INTX_DISABLE;
	FUNC3(dev, PCI_COMMAND, pci_command);

	return 0;
}