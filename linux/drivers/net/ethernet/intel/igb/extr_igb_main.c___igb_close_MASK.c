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
struct igb_adapter {int /*<<< orphan*/  state; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __IGB_RESETTING ; 
 int /*<<< orphan*/  FUNC1 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct igb_adapter*) ; 
 struct igb_adapter* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct net_device *netdev, bool suspending)
{
	struct igb_adapter *adapter = FUNC5(netdev);
	struct pci_dev *pdev = adapter->pdev;

	FUNC0(FUNC8(__IGB_RESETTING, &adapter->state));

	if (!suspending)
		FUNC6(&pdev->dev);

	FUNC1(adapter);
	FUNC4(adapter);

	FUNC3(adapter);
	FUNC2(adapter);

	if (!suspending)
		FUNC7(&pdev->dev);
	return 0;
}