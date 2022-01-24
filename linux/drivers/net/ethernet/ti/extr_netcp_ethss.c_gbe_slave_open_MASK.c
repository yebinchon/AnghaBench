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
struct gbe_slave {int port_num; scalar_t__ link_interface; scalar_t__ slave_num; int /*<<< orphan*/  phy; int /*<<< orphan*/  phy_node; void* phy_port_t; int /*<<< orphan*/  node; } ;
struct gbe_priv {int /*<<< orphan*/  dev; int /*<<< orphan*/  ale; int /*<<< orphan*/  rx_packet_max; } ;
struct gbe_intf {TYPE_1__* ndev; struct gbe_slave* slave; struct gbe_priv* gbe_dev; } ;
typedef  scalar_t__ phy_interface_t ;
struct TYPE_2__ {int /*<<< orphan*/  broadcast; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALE_MCAST_FWD_2 ; 
 int /*<<< orphan*/  ALE_PORT_STATE ; 
 int /*<<< orphan*/  ALE_PORT_STATE_FORWARD ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct gbe_slave*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HOST_TX_PRI_MAP_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (struct gbe_priv*) ; 
 scalar_t__ FUNC2 (struct gbe_priv*) ; 
 scalar_t__ FUNC3 (struct gbe_priv*) ; 
 scalar_t__ PHY_INTERFACE_MODE_NA ; 
 scalar_t__ PHY_INTERFACE_MODE_RGMII ; 
 scalar_t__ PHY_INTERFACE_MODE_SGMII ; 
 void* PORT_FIBRE ; 
 void* PORT_MII ; 
 scalar_t__ RGMII_LINK_MAC_PHY ; 
 scalar_t__ SGMII_LINK_MAC_PHY ; 
 scalar_t__ XGMII_LINK_MAC_PHY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 void FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct gbe_priv*,struct gbe_slave*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct gbe_slave*) ; 
 int /*<<< orphan*/  FUNC11 (struct gbe_slave*,struct gbe_intf*) ; 
 int /*<<< orphan*/  FUNC12 (struct gbe_priv*,struct gbe_slave*) ; 
 int /*<<< orphan*/  FUNC13 (struct gbe_priv*,struct gbe_slave*,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ,void (*) (struct net_device*),int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  port_regs ; 
 int /*<<< orphan*/  rx_pri_map ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void FUNC20 (struct net_device*) ; 

__attribute__((used)) static int FUNC21(struct gbe_intf *gbe_intf)
{
	struct gbe_priv *priv = gbe_intf->gbe_dev;
	struct gbe_slave *slave = gbe_intf->slave;
	phy_interface_t phy_mode;
	bool has_phy = false;

	void (*hndlr)(struct net_device *) = gbe_adjust_link;

	if (!FUNC1(priv))
		FUNC12(priv, slave);
	FUNC10(slave);
	if (!FUNC1(priv))
		FUNC13(priv, slave, false);
	FUNC9(priv, slave, priv->rx_packet_max);
	FUNC11(slave, gbe_intf);
	/* For NU & 2U switch, map the vlan priorities to zero
	 * as we only configure to use priority 0
	 */
	if (FUNC2(priv))
		FUNC19(HOST_TX_PRI_MAP_DEFAULT,
		       FUNC0(slave, port_regs, rx_pri_map));

	/* enable forwarding */
	FUNC5(priv->ale, slave->port_num,
			     ALE_PORT_STATE, ALE_PORT_STATE_FORWARD);
	FUNC4(priv->ale, gbe_intf->ndev->broadcast,
			   1 << slave->port_num, 0, 0, ALE_MCAST_FWD_2);

	if (slave->link_interface == SGMII_LINK_MAC_PHY) {
		has_phy = true;
		phy_mode = PHY_INTERFACE_MODE_SGMII;
		slave->phy_port_t = PORT_MII;
	} else if (slave->link_interface == RGMII_LINK_MAC_PHY) {
		has_phy = true;
		phy_mode = FUNC14(slave->node);
		/* if phy-mode is not present, default to
		 * PHY_INTERFACE_MODE_RGMII
		 */
		if (phy_mode < 0)
			phy_mode = PHY_INTERFACE_MODE_RGMII;

		if (!FUNC16(phy_mode)) {
			FUNC7(priv->dev,
				"Unsupported phy mode %d\n", phy_mode);
			return -EINVAL;
		}
		slave->phy_port_t = PORT_MII;
	} else if (slave->link_interface == XGMII_LINK_MAC_PHY) {
		has_phy = true;
		phy_mode = PHY_INTERFACE_MODE_NA;
		slave->phy_port_t = PORT_FIBRE;
	}

	if (has_phy) {
		if (FUNC3(priv))
			hndlr = xgbe_adjust_link;

		slave->phy = FUNC15(gbe_intf->ndev,
					    slave->phy_node,
					    hndlr, 0,
					    phy_mode);
		if (!slave->phy) {
			FUNC7(priv->dev, "phy not found on slave %d\n",
				slave->slave_num);
			return -ENODEV;
		}
		FUNC6(priv->dev, "phy found: id is: 0x%s\n",
			FUNC18(slave->phy));
		FUNC17(slave->phy);
	}
	return 0;
}