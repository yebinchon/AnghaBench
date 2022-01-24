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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct igc_adapter {struct pci_dev* pdev; struct net_device* netdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct igc_adapter*,int) ; 
 int FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct igc_adapter*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 

int FUNC6(struct igc_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	struct pci_dev *pdev = adapter->pdev;
	int err = 0;

	if (FUNC5(netdev))
		FUNC1(netdev);

	FUNC4(adapter);

	if (FUNC2(adapter, true)) {
		FUNC0(&pdev->dev, "Unable to allocate memory for queues\n");
		return -ENOMEM;
	}

	if (FUNC5(netdev))
		err = FUNC3(netdev);

	return err;
}