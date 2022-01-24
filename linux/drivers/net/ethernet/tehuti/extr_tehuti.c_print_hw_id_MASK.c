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
typedef  int /*<<< orphan*/  u16 ;
struct pci_nic {int port_num; scalar_t__ regs; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BDX_NIC_NAME ; 
 scalar_t__ FPGA_SEED ; 
 scalar_t__ FPGA_VER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_DEV_CTRL_REG ; 
 int /*<<< orphan*/  PCI_LINK_STATUS_REG ; 
 scalar_t__ SROM_VER ; 
 struct pci_nic* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 
 int FUNC6 (scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct pci_dev *pdev)
{
	struct pci_nic *nic = FUNC3(pdev);
	u16 pci_link_status = 0;
	u16 pci_ctrl = 0;

	FUNC4(pdev, PCI_LINK_STATUS_REG, &pci_link_status);
	FUNC4(pdev, PCI_DEV_CTRL_REG, &pci_ctrl);

	FUNC5("%s%s\n", BDX_NIC_NAME,
		nic->port_num == 1 ? "" : ", 2-Port");
	FUNC5("srom 0x%x fpga %d build %u lane# %d max_pl 0x%x mrrs 0x%x\n",
		FUNC6(nic->regs + SROM_VER), FUNC6(nic->regs + FPGA_VER) & 0xFFF,
		FUNC6(nic->regs + FPGA_SEED),
		FUNC2(pci_link_status),
		FUNC0(pci_ctrl), FUNC1(pci_ctrl));
}