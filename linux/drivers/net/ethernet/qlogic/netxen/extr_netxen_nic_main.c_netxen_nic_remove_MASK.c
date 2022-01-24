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
struct pci_dev {int /*<<< orphan*/  revision; } ;
struct netxen_adapter {scalar_t__ portnum; int /*<<< orphan*/  state; int /*<<< orphan*/  tx_timeout_task; struct net_device* netdev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __NX_RESETTING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct netxen_adapter*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (struct netxen_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC14 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*) ; 
 struct netxen_adapter* FUNC17 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC19 (struct net_device*) ; 

__attribute__((used)) static void FUNC20(struct pci_dev *pdev)
{
	struct netxen_adapter *adapter;
	struct net_device *netdev;

	adapter = FUNC17(pdev);
	if (adapter == NULL)
		return;

	netdev = adapter->netdev;

	FUNC4(adapter);

	FUNC19(netdev);

	FUNC1(&adapter->tx_timeout_task);

	FUNC8(adapter, false);
	FUNC9(adapter);

	FUNC14(adapter);

	if (adapter->portnum == 0)
		FUNC7(adapter);

	FUNC2(__NX_RESETTING, &adapter->state);

	FUNC13(adapter);
	FUNC12(adapter, 0);
	FUNC11(adapter);

	FUNC6(adapter);

	FUNC10(adapter);

	if (FUNC0(pdev->revision)) {
		FUNC5(adapter);
		FUNC16(pdev);
	}

	FUNC18(pdev);
	FUNC15(pdev);

	FUNC3(netdev);
}