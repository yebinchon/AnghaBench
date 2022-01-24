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
struct pch_gbe_adapter {int /*<<< orphan*/  hw; int /*<<< orphan*/  reset_task; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct pch_gbe_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct net_device* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC4(pdev);
	struct pch_gbe_adapter *adapter = FUNC2(netdev);

	FUNC0(&adapter->reset_task);
	FUNC5(netdev);

	FUNC3(&adapter->hw);

	FUNC1(netdev);
}