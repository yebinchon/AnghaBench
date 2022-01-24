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
struct TYPE_2__ {scalar_t__ duplex; void* mii_rmii; int /*<<< orphan*/  speed; int /*<<< orphan*/  link; } ;
union gmac_status {scalar_t__ bits32; TYPE_1__ bits; } ;
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct phy_device {scalar_t__ duplex; int speed; scalar_t__ asym_pause; scalar_t__ pause; int /*<<< orphan*/  interface; int /*<<< orphan*/  link; } ;
struct net_device {struct phy_device* phydev; } ;
struct gemini_ethernet_port {scalar_t__ gmac_base; } ;

/* Variables and functions */
 scalar_t__ DUPLEX_FULL ; 
 int FLOW_CTRL_RX ; 
 int FLOW_CTRL_TX ; 
 void* GMAC_PHY_RGMII_1000 ; 
 void* GMAC_PHY_RGMII_100_10 ; 
 int /*<<< orphan*/  GMAC_SPEED_10 ; 
 int /*<<< orphan*/  GMAC_SPEED_100 ; 
 int /*<<< orphan*/  GMAC_SPEED_1000 ; 
 scalar_t__ GMAC_STATUS ; 
 int /*<<< orphan*/  MII_ADVERTISE ; 
 int /*<<< orphan*/  MII_LPA ; 
 int /*<<< orphan*/  PHY_INTERFACE_MODE_RGMII ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*,char*) ; 
 struct gemini_ethernet_port* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct gemini_ethernet_port*) ; 
 int /*<<< orphan*/  FUNC9 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct phy_device*) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC14(struct net_device *netdev)
{
	struct gemini_ethernet_port *port = FUNC6(netdev);
	struct phy_device *phydev = netdev->phydev;
	union gmac_status status, old_status;
	int pause_tx = 0;
	int pause_rx = 0;

	status.bits32 = FUNC12(port->gmac_base + GMAC_STATUS);
	old_status.bits32 = status.bits32;
	status.bits.link = phydev->link;
	status.bits.duplex = phydev->duplex;

	switch (phydev->speed) {
	case 1000:
		status.bits.speed = GMAC_SPEED_1000;
		if (phydev->interface == PHY_INTERFACE_MODE_RGMII)
			status.bits.mii_rmii = GMAC_PHY_RGMII_1000;
		FUNC4(netdev, "connect %s to RGMII @ 1Gbit\n",
			   FUNC11(phydev));
		break;
	case 100:
		status.bits.speed = GMAC_SPEED_100;
		if (phydev->interface == PHY_INTERFACE_MODE_RGMII)
			status.bits.mii_rmii = GMAC_PHY_RGMII_100_10;
		FUNC4(netdev, "connect %s to RGMII @ 100 Mbit\n",
			   FUNC11(phydev));
		break;
	case 10:
		status.bits.speed = GMAC_SPEED_10;
		if (phydev->interface == PHY_INTERFACE_MODE_RGMII)
			status.bits.mii_rmii = GMAC_PHY_RGMII_100_10;
		FUNC4(netdev, "connect %s to RGMII @ 10 Mbit\n",
			   FUNC11(phydev));
		break;
	default:
		FUNC7(netdev, "Unsupported PHY speed (%d) on %s\n",
			    phydev->speed, FUNC11(phydev));
	}

	if (phydev->duplex == DUPLEX_FULL) {
		u16 lcladv = FUNC10(phydev, MII_ADVERTISE);
		u16 rmtadv = FUNC10(phydev, MII_LPA);
		u8 cap = FUNC3(lcladv, rmtadv);

		if (cap & FLOW_CTRL_RX)
			pause_rx = 1;
		if (cap & FLOW_CTRL_TX)
			pause_tx = 1;
	}

	FUNC2(netdev, pause_tx, pause_rx);

	if (old_status.bits32 == status.bits32)
		return;

	if (FUNC8(port)) {
		FUNC9(phydev);
		FUNC5(netdev, "link flow control: %s\n",
			    phydev->pause
			    ? (phydev->asym_pause ? "tx" : "both")
			    : (phydev->asym_pause ? "rx" : "none")
		);
	}

	FUNC0(netdev);
	FUNC13(status.bits32, port->gmac_base + GMAC_STATUS);
	FUNC1(netdev);
}