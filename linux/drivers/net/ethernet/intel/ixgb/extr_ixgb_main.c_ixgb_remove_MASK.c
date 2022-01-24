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
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  hw_addr; } ;
struct ixgb_adapter {TYPE_1__ hw; int /*<<< orphan*/  tx_timeout_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct ixgb_adapter* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 struct net_device* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static void
FUNC8(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC5(pdev);
	struct ixgb_adapter *adapter = FUNC3(netdev);

	FUNC0(&adapter->tx_timeout_task);

	FUNC7(netdev);

	FUNC2(adapter->hw.hw_addr);
	FUNC6(pdev);

	FUNC1(netdev);
	FUNC4(pdev);
}