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
struct ixgb_adapter {int /*<<< orphan*/  watchdog_timer; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ixgb_adapter*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ixgb_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 struct net_device* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC5(pdev);
	struct ixgb_adapter *adapter = FUNC2(netdev);

	FUNC6(pdev);

	if (FUNC4(netdev)) {
		if (FUNC0(adapter)) {
			FUNC7("can't bring device back up after reset\n");
			return;
		}
	}

	FUNC3(netdev);
	FUNC1(&adapter->watchdog_timer, jiffies);
}