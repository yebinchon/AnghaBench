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
struct pch_gbe_adapter {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 struct pch_gbe_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct pch_gbe_adapter*) ; 
 struct net_device* FUNC5 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC5(pdev);
	struct pch_gbe_adapter *adapter = FUNC1(netdev);

	if (FUNC3(netdev)) {
		if (FUNC4(adapter)) {
			FUNC0(netdev,
				   "can't bring device back up after reset\n");
			return;
		}
	}
	FUNC2(netdev);
}