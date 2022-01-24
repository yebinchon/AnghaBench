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
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct atl1e_hw {int dummy; } ;
struct atl1e_adapter {scalar_t__ link_speed; scalar_t__ link_duplex; struct net_device* netdev; struct atl1e_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atl1e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct atl1e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ BMSR_LSTATUS ; 
 scalar_t__ FULL_DUPLEX ; 
 int /*<<< orphan*/  MAC_CTRL_RX_EN ; 
 int /*<<< orphan*/  MII_BMSR ; 
 int /*<<< orphan*/  REG_MAC_CTRL ; 
 scalar_t__ SPEED_0 ; 
 int FUNC2 (struct atl1e_hw*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct atl1e_hw*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct atl1e_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct atl1e_adapter *adapter)
{
	struct atl1e_hw *hw = &adapter->hw;
	struct net_device *netdev = adapter->netdev;
	int err = 0;
	u16 speed, duplex, phy_data;

	/* MII_BMSR must read twice */
	FUNC3(hw, MII_BMSR, &phy_data);
	FUNC3(hw, MII_BMSR, &phy_data);
	if ((phy_data & BMSR_LSTATUS) == 0) {
		/* link down */
		if (FUNC7(netdev)) { /* old link state: Up */
			u32 value;
			/* disable rx */
			value = FUNC0(hw, REG_MAC_CTRL);
			value &= ~MAC_CTRL_RX_EN;
			FUNC1(hw, REG_MAC_CTRL, value);
			adapter->link_speed = SPEED_0;
			FUNC6(netdev);
			FUNC9(netdev);
		}
	} else {
		/* Link Up */
		err = FUNC2(hw, &speed, &duplex);
		if (FUNC11(err))
			return err;

		/* link result is our setting */
		if (adapter->link_speed != speed ||
		    adapter->link_duplex != duplex) {
			adapter->link_speed  = speed;
			adapter->link_duplex = duplex;
			FUNC4(adapter);
			FUNC5(netdev,
				    "NIC Link is Up <%d Mbps %s Duplex>\n",
				    adapter->link_speed,
				    adapter->link_duplex == FULL_DUPLEX ?
				    "Full" : "Half");
		}

		if (!FUNC7(netdev)) {
			/* Link down -> Up */
			FUNC8(netdev);
			FUNC10(netdev);
		}
	}
	return 0;
}