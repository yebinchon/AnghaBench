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
struct atl1e_adapter {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct atl1e_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct atl1e_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 struct net_device* FUNC5 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC5(pdev);
	struct atl1e_adapter *adapter = FUNC2(netdev);

	if (FUNC4(netdev)) {
		if (FUNC0(adapter)) {
			FUNC1(adapter->netdev,
				   "can't bring device back up after reset\n");
			return;
		}
	}

	FUNC3(netdev);
}