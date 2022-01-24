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
struct TYPE_2__ {int /*<<< orphan*/  mii_rmii; } ;
union gmac_status {int /*<<< orphan*/  bits32; TYPE_1__ bits; } ;
struct phy_device {int interface; } ;
struct net_device {struct phy_device* phydev; } ;
struct gemini_ethernet_port {scalar_t__ gmac_base; struct device* dev; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  GMAC_PHY_GMII ; 
 int /*<<< orphan*/  GMAC_PHY_MII ; 
 int /*<<< orphan*/  GMAC_PHY_RGMII_100_10 ; 
 scalar_t__ GMAC_STATUS ; 
#define  PHY_INTERFACE_MODE_GMII 130 
#define  PHY_INTERFACE_MODE_MII 129 
#define  PHY_INTERFACE_MODE_RGMII 128 
 int /*<<< orphan*/  SPEED_1000 ; 
 int /*<<< orphan*/  gmac_speed_set ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 
 struct gemini_ethernet_port* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct gemini_ethernet_port*) ; 
 struct phy_device* FUNC4 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct net_device *netdev)
{
	struct gemini_ethernet_port *port = FUNC2(netdev);
	union gmac_status status = { .bits32 = 0 };
	struct device *dev = port->dev;
	struct phy_device *phy;

	phy = FUNC4(netdev,
				     dev->of_node,
				     gmac_speed_set);
	if (!phy)
		return -ENODEV;
	netdev->phydev = phy;

	FUNC7(phy, SPEED_1000);
	FUNC8(phy);

	/* set PHY interface type */
	switch (phy->interface) {
	case PHY_INTERFACE_MODE_MII:
		FUNC0(netdev,
			   "MII: set GMAC0 to GMII mode, GMAC1 disabled\n");
		status.bits.mii_rmii = GMAC_PHY_MII;
		break;
	case PHY_INTERFACE_MODE_GMII:
		FUNC0(netdev,
			   "GMII: set GMAC0 to GMII mode, GMAC1 disabled\n");
		status.bits.mii_rmii = GMAC_PHY_GMII;
		break;
	case PHY_INTERFACE_MODE_RGMII:
		FUNC0(netdev,
			   "RGMII: set GMAC0 and GMAC1 to MII/RGMII mode\n");
		status.bits.mii_rmii = GMAC_PHY_RGMII_100_10;
		break;
	default:
		FUNC1(netdev, "Unsupported MII interface\n");
		FUNC6(phy);
		netdev->phydev = NULL;
		return -EINVAL;
	}
	FUNC9(status.bits32, port->gmac_base + GMAC_STATUS);

	if (FUNC3(port))
		FUNC5(phy);

	return 0;
}