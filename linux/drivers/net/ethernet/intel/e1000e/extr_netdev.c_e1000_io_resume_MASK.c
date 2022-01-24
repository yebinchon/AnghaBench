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
struct e1000_adapter {int flags; } ;

/* Variables and functions */
 int FLAG_HAS_AMT ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_adapter*) ; 
 struct e1000_adapter* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 struct net_device* FUNC6 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC7(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC6(pdev);
	struct e1000_adapter *adapter = FUNC3(netdev);

	FUNC0(adapter);

	if (FUNC5(netdev))
		FUNC2(adapter);

	FUNC4(netdev);

	/* If the controller has AMT, do not set DRV_LOAD until the interface
	 * is up.  For all other cases, let the f/w know that the h/w is now
	 * under the control of the driver.
	 */
	if (!(adapter->flags & FLAG_HAS_AMT))
		FUNC1(adapter);
}