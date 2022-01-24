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
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_COMMAND ; 
 int PCI_COMMAND_INTX_DISABLE ; 
 int PCI_COMMAND_IO ; 
 int PCI_COMMAND_MASTER ; 
 int PCI_COMMAND_MEMORY ; 
 int /*<<< orphan*/  REG_PM_CTRLSTAT ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *pdev)
{
	u16 cmd;

	FUNC0(pdev, PCI_COMMAND, &cmd);

	if (cmd & PCI_COMMAND_INTX_DISABLE)
		cmd &= ~PCI_COMMAND_INTX_DISABLE;
	if (cmd & PCI_COMMAND_IO)
		cmd &= ~PCI_COMMAND_IO;
	if (0 == (cmd & PCI_COMMAND_MEMORY))
		cmd |= PCI_COMMAND_MEMORY;
	if (0 == (cmd & PCI_COMMAND_MASTER))
		cmd |= PCI_COMMAND_MASTER;
	FUNC2(pdev, PCI_COMMAND, cmd);

	/*
	 * some motherboards BIOS(PXE/EFI) driver may set PME
	 * while they transfer control to OS (Windows/Linux)
	 * so we should clear this bit before NIC work normally
	 */
	FUNC1(pdev, REG_PM_CTRLSTAT, 0);
}