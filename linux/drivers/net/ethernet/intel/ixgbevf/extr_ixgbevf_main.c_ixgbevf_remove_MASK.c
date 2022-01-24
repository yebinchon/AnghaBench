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
struct net_device {scalar_t__ reg_state; } ;
struct ixgbevf_adapter {int /*<<< orphan*/  state; int /*<<< orphan*/  rss_key; int /*<<< orphan*/  hw; int /*<<< orphan*/  io_addr; int /*<<< orphan*/  service_task; } ;

/* Variables and functions */
 scalar_t__ NETREG_REGISTERED ; 
 int /*<<< orphan*/  __IXGBEVF_DISABLED ; 
 int /*<<< orphan*/  __IXGBEVF_REMOVING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct ixgbevf_adapter* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 struct net_device* FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 

__attribute__((used)) static void FUNC15(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC10(pdev);
	struct ixgbevf_adapter *adapter;
	bool disable_dev;

	if (!netdev)
		return;

	adapter = FUNC8(netdev);

	FUNC12(__IXGBEVF_REMOVING, &adapter->state);
	FUNC0(&adapter->service_task);

	if (netdev->reg_state == NETREG_REGISTERED)
		FUNC14(netdev);

	FUNC6(adapter);
	FUNC4(adapter);
	FUNC5(adapter);

	FUNC3(adapter->io_addr);
	FUNC11(pdev);

	FUNC2(&adapter->hw, "Remove complete\n");

	FUNC7(adapter->rss_key);
	disable_dev = !FUNC13(__IXGBEVF_DISABLED, &adapter->state);
	FUNC1(netdev);

	if (disable_dev)
		FUNC9(pdev);
}