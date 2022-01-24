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
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
struct phy_device {scalar_t__ link; scalar_t__ speed; TYPE_1__ mdio; } ;
struct net_device {struct phy_device* phydev; } ;
struct et131x_adapter {scalar_t__ link; int boot_coma; int registry_jumbo_packet; } ;

/* Variables and functions */
 int ET_PHY_CONFIG_FIFO_DEPTH_32 ; 
 int ET_PHY_CONFIG_TX_FIFO_DEPTH ; 
 int /*<<< orphan*/  PHY_CONFIG ; 
 int /*<<< orphan*/  PHY_DATA_REG ; 
 int /*<<< orphan*/  PHY_INDEX_REG ; 
 int /*<<< orphan*/  PHY_MPHY_CONTROL_REG ; 
 scalar_t__ SPEED_10 ; 
 scalar_t__ SPEED_1000 ; 
 int /*<<< orphan*/  FUNC0 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct et131x_adapter*) ; 
 scalar_t__ FUNC3 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct et131x_adapter*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct et131x_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (struct et131x_adapter*) ; 
 struct et131x_adapter* FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct phy_device*) ; 

__attribute__((used)) static void FUNC15(struct net_device *netdev)
{
	struct et131x_adapter *adapter = FUNC13(netdev);
	struct  phy_device *phydev = netdev->phydev;

	if (!phydev)
		return;
	if (phydev->link == adapter->link)
		return;

	/* Check to see if we are in coma mode and if
	 * so, disable it because we will not be able
	 * to read PHY values until we are out.
	 */
	if (FUNC3(adapter))
		FUNC2(adapter);

	adapter->link = phydev->link;
	FUNC14(phydev);

	if (phydev->link) {
		adapter->boot_coma = 20;
		if (phydev->speed == SPEED_10) {
			u16 register18;

			FUNC9(adapter, PHY_MPHY_CONTROL_REG,
					&register18);
			FUNC10(adapter, phydev->mdio.addr,
					 PHY_MPHY_CONTROL_REG,
					 register18 | 0x4);
			FUNC10(adapter, phydev->mdio.addr,
					 PHY_INDEX_REG, register18 | 0x8402);
			FUNC10(adapter, phydev->mdio.addr,
					 PHY_DATA_REG, register18 | 511);
			FUNC10(adapter, phydev->mdio.addr,
					 PHY_MPHY_CONTROL_REG, register18);
		}

		FUNC0(adapter);

		if (phydev->speed == SPEED_1000 &&
		    adapter->registry_jumbo_packet > 2048) {
			u16 reg;

			FUNC9(adapter, PHY_CONFIG, &reg);
			reg &= ~ET_PHY_CONFIG_TX_FIFO_DEPTH;
			reg |= ET_PHY_CONFIG_FIFO_DEPTH_32;
			FUNC10(adapter, phydev->mdio.addr,
					 PHY_CONFIG, reg);
		}

		FUNC11(adapter);
		FUNC1(adapter);
	} else {
		adapter->boot_coma = 0;

		if (phydev->speed == SPEED_10) {
			u16 register18;

			FUNC9(adapter, PHY_MPHY_CONTROL_REG,
					&register18);
			FUNC10(adapter, phydev->mdio.addr,
					 PHY_MPHY_CONTROL_REG,
					 register18 | 0x4);
			FUNC10(adapter, phydev->mdio.addr,
					 PHY_INDEX_REG, register18 | 0x8402);
			FUNC10(adapter, phydev->mdio.addr,
					 PHY_DATA_REG, register18 | 511);
			FUNC10(adapter, phydev->mdio.addr,
					 PHY_MPHY_CONTROL_REG, register18);
		}

		FUNC7(adapter);
		FUNC8(adapter);

		/* Bring the device back to the state it was during
		 * init prior to autonegotiation being complete. This
		 * way, when we get the auto-neg complete interrupt,
		 * we can complete init by calling config_mac_regs2.
		 */
		FUNC12(adapter);

		FUNC4(adapter);

		FUNC5(netdev);
		FUNC6(netdev);
	}
}