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
struct phy_device {scalar_t__ link; } ;
struct fixed_phy_status {int link; int /*<<< orphan*/  asym_pause; int /*<<< orphan*/  pause; int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; } ;
struct device {struct bcmgenet_platform_data* platform_data; } ;
struct bcmgenet_priv {scalar_t__ phy_interface; int /*<<< orphan*/  dev; TYPE_1__* pdev; } ;
struct bcmgenet_platform_data {scalar_t__ phy_interface; int phy_address; int /*<<< orphan*/  phy_duplex; int /*<<< orphan*/  phy_speed; scalar_t__ mdio_enabled; } ;
struct TYPE_2__ {int id; struct device dev; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct phy_device*) ; 
 int MII_BUS_ID_SIZE ; 
 char* PHY_ID_FMT ; 
 scalar_t__ PHY_INTERFACE_MODE_MOCA ; 
 int /*<<< orphan*/  PHY_POLL ; 
 char* UNIMAC_MDIO_DRV_NAME ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct phy_device* FUNC2 (int /*<<< orphan*/ ,struct fixed_phy_status*,int /*<<< orphan*/ *) ; 
 struct phy_device* FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*,int) ; 

__attribute__((used)) static int FUNC5(struct bcmgenet_priv *priv)
{
	struct device *kdev = &priv->pdev->dev;
	struct bcmgenet_platform_data *pd = kdev->platform_data;
	char phy_name[MII_BUS_ID_SIZE + 3];
	char mdio_bus_id[MII_BUS_ID_SIZE];
	struct phy_device *phydev;

	FUNC4(mdio_bus_id, MII_BUS_ID_SIZE, "%s-%d",
		 UNIMAC_MDIO_DRV_NAME, priv->pdev->id);

	if (pd->phy_interface != PHY_INTERFACE_MODE_MOCA && pd->mdio_enabled) {
		FUNC4(phy_name, MII_BUS_ID_SIZE, PHY_ID_FMT,
			 mdio_bus_id, pd->phy_address);

		/*
		 * Internal or external PHY with MDIO access
		 */
		phydev = FUNC3(priv->dev, phy_name, pd->phy_interface);
		if (!phydev) {
			FUNC1(kdev, "failed to register PHY device\n");
			return -ENODEV;
		}
	} else {
		/*
		 * MoCA port or no MDIO access.
		 * Use fixed PHY to represent the link layer.
		 */
		struct fixed_phy_status fphy_status = {
			.link = 1,
			.speed = pd->phy_speed,
			.duplex = pd->phy_duplex,
			.pause = 0,
			.asym_pause = 0,
		};

		phydev = FUNC2(PHY_POLL, &fphy_status, NULL);
		if (!phydev || FUNC0(phydev)) {
			FUNC1(kdev, "failed to register fixed PHY device\n");
			return -ENODEV;
		}

		/* Make sure we initialize MoCA PHYs with a link down */
		phydev->link = 0;

	}

	priv->phy_interface = pd->phy_interface;

	return 0;
}