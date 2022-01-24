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
struct e1000_hw {scalar_t__ flash_address; } ;
struct igb_adapter {int flags; int /*<<< orphan*/  shadow_vfta; int /*<<< orphan*/  mac_table; int /*<<< orphan*/  io_addr; int /*<<< orphan*/  watchdog_task; int /*<<< orphan*/  reset_task; int /*<<< orphan*/  phy_info_timer; int /*<<< orphan*/  watchdog_timer; int /*<<< orphan*/  state; struct e1000_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_DCA_CTRL ; 
 int /*<<< orphan*/  E1000_DCA_CTRL_DCA_MODE_DISABLE ; 
 int IGB_FLAG_DCA_ENABLED ; 
 int /*<<< orphan*/  __IGB_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 struct igb_adapter* FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*) ; 
 struct net_device* FUNC16 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC23(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC16(pdev);
	struct igb_adapter *adapter = FUNC13(netdev);
	struct e1000_hw *hw = &adapter->hw;

	FUNC19(&pdev->dev);
#ifdef CONFIG_IGB_HWMON
	igb_sysfs_exit(adapter);
#endif
	FUNC9(adapter);
	FUNC7(adapter);
	/* The watchdog timer may be rescheduled, so explicitly
	 * disable watchdog from being rescheduled.
	 */
	FUNC20(__IGB_DOWN, &adapter->state);
	FUNC2(&adapter->watchdog_timer);
	FUNC2(&adapter->phy_info_timer);

	FUNC0(&adapter->reset_task);
	FUNC0(&adapter->watchdog_task);

#ifdef CONFIG_IGB_DCA
	if (adapter->flags & IGB_FLAG_DCA_ENABLED) {
		dev_info(&pdev->dev, "DCA disabled\n");
		dca_remove_requester(&pdev->dev);
		adapter->flags &= ~IGB_FLAG_DCA_ENABLED;
		wr32(E1000_DCA_CTRL, E1000_DCA_CTRL_DCA_MODE_DISABLE);
	}
#endif

	/* Release control of h/w to f/w.  If f/w is AMT enabled, this
	 * would have already happened in close and is redundant.
	 */
	FUNC8(adapter);

#ifdef CONFIG_PCI_IOV
	igb_disable_sriov(pdev);
#endif

	FUNC21(netdev);

	FUNC5(adapter);

	FUNC17(pdev, adapter->io_addr);
	if (hw->flash_address)
		FUNC11(hw->flash_address);
	FUNC18(pdev);

	FUNC12(adapter->mac_table);
	FUNC12(adapter->shadow_vfta);
	FUNC4(netdev);

	FUNC15(pdev);

	FUNC14(pdev);
}