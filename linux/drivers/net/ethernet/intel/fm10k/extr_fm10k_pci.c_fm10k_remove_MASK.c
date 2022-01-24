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
struct pci_dev {int dummy; } ;
struct net_device {scalar_t__ reg_state; } ;
struct fm10k_intfc {scalar_t__ uc_addr; scalar_t__ sw_addr; int /*<<< orphan*/  glort; int /*<<< orphan*/  service_timer; struct net_device* netdev; } ;

/* Variables and functions */
 scalar_t__ NETREG_REGISTERED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fm10k_intfc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC3 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC6 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC7 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 struct fm10k_intfc* FUNC12 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 

__attribute__((used)) static void FUNC15(struct pci_dev *pdev)
{
	struct fm10k_intfc *interface = FUNC12(pdev);
	struct net_device *netdev = interface->netdev;

	FUNC0(&interface->service_timer);

	FUNC7(interface);
	FUNC6(interface);

	/* Remove all pending MAC/VLAN requests */
	FUNC1(interface, interface->glort, true);

	/* free netdev, this may bounce the interrupts due to setup_tc */
	if (netdev->reg_state == NETREG_REGISTERED)
		FUNC14(netdev);

	/* release VFs */
	FUNC4(pdev);

	/* disable mailbox interrupt */
	FUNC5(interface);

	/* free interrupts */
	FUNC2(interface);

	/* remove any debugfs interfaces */
	FUNC3(interface);

	if (interface->sw_addr)
		FUNC9(interface->sw_addr);
	FUNC9(interface->uc_addr);

	FUNC8(netdev);

	FUNC13(pdev);

	FUNC11(pdev);

	FUNC10(pdev);
}