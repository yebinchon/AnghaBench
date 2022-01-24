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
struct pci_nic {int port_num; scalar_t__ irq_type; int /*<<< orphan*/  regs; TYPE_1__** priv; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct net_device* ndev; } ;

/* Variables and functions */
 scalar_t__ IRQ_MSI ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 struct pci_nic* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_nic*) ; 

__attribute__((used)) static void FUNC9(struct pci_dev *pdev)
{
	struct pci_nic *nic = FUNC5(pdev);
	struct net_device *ndev;
	int port;

	for (port = 0; port < nic->port_num; port++) {
		ndev = nic->priv[port]->ndev;
		FUNC7(ndev);
		FUNC1(ndev);
	}

	/*bdx_hw_reset_direct(nic->regs); */
#ifdef BDX_MSI
	if (nic->irq_type == IRQ_MSI)
		pci_disable_msi(pdev);
#endif

	FUNC2(nic->regs);
	FUNC6(pdev);
	FUNC3(pdev);
	FUNC8(nic);

	FUNC0();
}