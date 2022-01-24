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
typedef  scalar_t__ u16 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct atl1c_hw {int hibernate; } ;
struct atl1c_adapter {scalar_t__ link_speed; scalar_t__ link_duplex; int /*<<< orphan*/  mdio_lock; struct pci_dev* pdev; struct net_device* netdev; struct atl1c_hw hw; } ;

/* Variables and functions */
 scalar_t__ BMSR_LSTATUS ; 
 scalar_t__ FULL_DUPLEX ; 
 int /*<<< orphan*/  MII_BMSR ; 
 scalar_t__ SPEED_0 ; 
 int /*<<< orphan*/  FUNC0 (struct atl1c_adapter*) ; 
 int /*<<< orphan*/  atl1c_driver_name ; 
 int FUNC1 (struct atl1c_hw*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct atl1c_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct atl1c_hw*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct atl1c_adapter*) ; 
 scalar_t__ FUNC5 (struct atl1c_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct atl1c_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct atl1c_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 scalar_t__ FUNC13 (struct atl1c_adapter*) ; 
 scalar_t__ FUNC14 (struct atl1c_adapter*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static void FUNC18(struct atl1c_adapter *adapter)
{
	struct atl1c_hw *hw = &adapter->hw;
	struct net_device *netdev = adapter->netdev;
	struct pci_dev    *pdev   = adapter->pdev;
	int err;
	unsigned long flags;
	u16 speed, duplex, phy_data;

	FUNC15(&adapter->mdio_lock, flags);
	/* MII_BMSR must read twise */
	FUNC3(hw, MII_BMSR, &phy_data);
	FUNC3(hw, MII_BMSR, &phy_data);
	FUNC16(&adapter->mdio_lock, flags);

	if ((phy_data & BMSR_LSTATUS) == 0) {
		/* link down */
		FUNC10(netdev);
		hw->hibernate = true;
		if (FUNC5(hw) != 0)
			if (FUNC13(adapter))
				FUNC9(&pdev->dev, "reset mac failed\n");
		FUNC6(hw, SPEED_0);
		FUNC2(hw, SPEED_0);
		FUNC4(adapter);
		FUNC0(adapter);
	} else {
		/* Link Up */
		hw->hibernate = false;
		FUNC15(&adapter->mdio_lock, flags);
		err = FUNC1(hw, &speed, &duplex);
		FUNC16(&adapter->mdio_lock, flags);
		if (FUNC17(err))
			return;
		/* link result is our setting */
		if (adapter->link_speed != speed ||
		    adapter->link_duplex != duplex) {
			adapter->link_speed  = speed;
			adapter->link_duplex = duplex;
			FUNC6(hw, speed);
			FUNC2(hw, speed);
			FUNC7(adapter);
			if (FUNC14(adapter))
				FUNC8(&pdev->dev,
					"%s: %s NIC Link is Up<%d Mbps %s>\n",
					atl1c_driver_name, netdev->name,
					adapter->link_speed,
					adapter->link_duplex == FULL_DUPLEX ?
					"Full Duplex" : "Half Duplex");
		}
		if (!FUNC11(netdev))
			FUNC12(netdev);
	}
}