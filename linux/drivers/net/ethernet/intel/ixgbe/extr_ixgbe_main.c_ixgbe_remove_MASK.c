#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {scalar_t__ reg_state; } ;
struct ixgbe_adapter {int flags; int /*<<< orphan*/  state; int /*<<< orphan*/  af_xdp_zc_qps; TYPE_1__* rss_key; TYPE_1__* mac_table; TYPE_1__** jump_tables; int /*<<< orphan*/  io_addr; TYPE_1__* ixgbe_ieee_ets; TYPE_1__* ixgbe_ieee_pfc; int /*<<< orphan*/  hw; scalar_t__ mii_bus; int /*<<< orphan*/  service_task; struct net_device* netdev; } ;
struct TYPE_2__ {struct TYPE_2__* mask; struct TYPE_2__* input; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_DCA_CTRL ; 
 int /*<<< orphan*/  IXGBE_DCA_CTRL_DCA_DISABLE ; 
 int IXGBE_FLAG_DCA_ENABLED ; 
 int IXGBE_MAX_LINK_HANDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ NETREG_REGISTERED ; 
 int /*<<< orphan*/  __IXGBE_DISABLED ; 
 int /*<<< orphan*/  __IXGBE_REMOVING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC13 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*) ; 
 struct ixgbe_adapter* FUNC18 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct net_device*) ; 

__attribute__((used)) static void FUNC23(struct pci_dev *pdev)
{
	struct ixgbe_adapter *adapter = FUNC18(pdev);
	struct net_device *netdev;
	bool disable_dev;
	int i;

	/* if !adapter then we already cleaned up in probe */
	if (!adapter)
		return;

	netdev  = adapter->netdev;
	FUNC8(adapter);

	FUNC20(__IXGBE_REMOVING, &adapter->state);
	FUNC2(&adapter->service_task);

	if (adapter->mii_bus)
		FUNC15(adapter->mii_bus);

#ifdef CONFIG_IXGBE_DCA
	if (adapter->flags & IXGBE_FLAG_DCA_ENABLED) {
		adapter->flags &= ~IXGBE_FLAG_DCA_ENABLED;
		dca_remove_requester(&pdev->dev);
		IXGBE_WRITE_REG(&adapter->hw, IXGBE_DCA_CTRL,
				IXGBE_DCA_CTRL_DCA_DISABLE);
	}

#endif
#ifdef CONFIG_IXGBE_HWMON
	ixgbe_sysfs_exit(adapter);
#endif /* CONFIG_IXGBE_HWMON */

	/* remove the added san mac */
	FUNC9(netdev);

#ifdef CONFIG_PCI_IOV
	ixgbe_disable_sriov(adapter);
#endif
	if (netdev->reg_state == NETREG_REGISTERED)
		FUNC22(netdev);

	FUNC12(adapter);
	FUNC7(adapter);

	FUNC11(adapter);

#ifdef CONFIG_DCB
	kfree(adapter->ixgbe_ieee_pfc);
	kfree(adapter->ixgbe_ieee_ets);

#endif
	FUNC6(adapter->io_addr);
	FUNC19(pdev);

	FUNC4("complete\n");

	for (i = 0; i < IXGBE_MAX_LINK_HANDLE; i++) {
		if (adapter->jump_tables[i]) {
			FUNC14(adapter->jump_tables[i]->input);
			FUNC14(adapter->jump_tables[i]->mask);
		}
		FUNC14(adapter->jump_tables[i]);
	}

	FUNC14(adapter->mac_table);
	FUNC14(adapter->rss_key);
	FUNC1(adapter->af_xdp_zc_qps);
	disable_dev = !FUNC21(__IXGBE_DISABLED, &adapter->state);
	FUNC5(netdev);

	FUNC17(pdev);

	if (disable_dev)
		FUNC16(pdev);
}