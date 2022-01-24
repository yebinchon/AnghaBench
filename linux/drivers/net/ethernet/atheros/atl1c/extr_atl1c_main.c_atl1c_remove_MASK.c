#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  hw_addr; int /*<<< orphan*/  perm_mac_addr; } ;
struct atl1c_adapter {TYPE_1__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct atl1c_adapter* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct net_device* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

__attribute__((used)) static void FUNC9(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC6(pdev);
	struct atl1c_adapter *adapter = FUNC4(netdev);

	FUNC8(netdev);
	/* restore permanent address */
	FUNC0(&adapter->hw, adapter->hw.perm_mac_addr);
	FUNC1(&adapter->hw);

	FUNC3(adapter->hw.hw_addr);

	FUNC7(pdev);
	FUNC5(pdev);
	FUNC2(netdev);
}