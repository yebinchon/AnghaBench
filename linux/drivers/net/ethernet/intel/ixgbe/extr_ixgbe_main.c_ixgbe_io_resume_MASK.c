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
struct net_device {int dummy; } ;
struct ixgbe_adapter {scalar_t__ vferr_refcount; struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 struct ixgbe_adapter* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(struct pci_dev *pdev)
{
	struct ixgbe_adapter *adapter = FUNC4(pdev);
	struct net_device *netdev = adapter->netdev;

#ifdef CONFIG_PCI_IOV
	if (adapter->vferr_refcount) {
		e_info(drv, "Resuming after VF err\n");
		adapter->vferr_refcount--;
		return;
	}

#endif
	FUNC5();
	if (FUNC3(netdev))
		FUNC1(netdev);

	FUNC2(netdev);
	FUNC6();
}