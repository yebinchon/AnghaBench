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
struct rtl8169_private {struct pci_dev* pci_dev; } ;
struct pci_dev {scalar_t__ broken_parity_status; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_COMMAND ; 
 int PCI_COMMAND_PARITY ; 
 int PCI_COMMAND_SERR ; 
 int /*<<< orphan*/  PCI_STATUS ; 
 int PCI_STATUS_DETECTED_PARITY ; 
 int PCI_STATUS_REC_MASTER_ABORT ; 
 int PCI_STATUS_REC_TARGET_ABORT ; 
 int PCI_STATUS_SIG_SYSTEM_ERROR ; 
 int PCI_STATUS_SIG_TARGET_ABORT ; 
 int /*<<< orphan*/  RTL_FLAG_TASK_RESET_PENDING ; 
 int /*<<< orphan*/  intr ; 
 struct rtl8169_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*,int /*<<< orphan*/ ,struct net_device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev)
{
	struct rtl8169_private *tp = FUNC0(dev);
	struct pci_dev *pdev = tp->pci_dev;
	u16 pci_status, pci_cmd;

	FUNC2(pdev, PCI_COMMAND, &pci_cmd);
	FUNC2(pdev, PCI_STATUS, &pci_status);

	FUNC1(tp, intr, dev, "PCI error (cmd = 0x%04x, status = 0x%04x)\n",
		  pci_cmd, pci_status);

	/*
	 * The recovery sequence below admits a very elaborated explanation:
	 * - it seems to work;
	 * - I did not see what else could be done;
	 * - it makes iop3xx happy.
	 *
	 * Feel free to adjust to your needs.
	 */
	if (pdev->broken_parity_status)
		pci_cmd &= ~PCI_COMMAND_PARITY;
	else
		pci_cmd |= PCI_COMMAND_SERR | PCI_COMMAND_PARITY;

	FUNC3(pdev, PCI_COMMAND, pci_cmd);

	FUNC3(pdev, PCI_STATUS,
		pci_status & (PCI_STATUS_DETECTED_PARITY |
		PCI_STATUS_SIG_SYSTEM_ERROR | PCI_STATUS_REC_MASTER_ABORT |
		PCI_STATUS_REC_TARGET_ABORT | PCI_STATUS_SIG_TARGET_ABORT));

	FUNC4(tp, RTL_FLAG_TASK_RESET_PENDING);
}