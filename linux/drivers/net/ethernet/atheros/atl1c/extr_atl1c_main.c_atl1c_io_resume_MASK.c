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
struct atl1c_adapter {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct atl1c_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct atl1c_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct atl1c_adapter*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 struct net_device* FUNC6 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC7(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC6(pdev);
	struct atl1c_adapter *adapter = FUNC2(netdev);

	if (FUNC5(netdev)) {
		if (FUNC0(adapter)) {
			if (FUNC4(adapter))
				FUNC1(&pdev->dev,
					"Cannot bring device back up after reset\n");
			return;
		}
	}

	FUNC3(netdev);
}