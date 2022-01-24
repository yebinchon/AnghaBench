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
struct phy_device {int dummy; } ;
struct net_device {int dummy; } ;
struct fec_enet_private {int dev_id; int quirks; scalar_t__ full_duplex; scalar_t__ link; int /*<<< orphan*/  phy_interface; TYPE_1__* mii_bus; scalar_t__ phy_node; } ;
typedef  int /*<<< orphan*/  phy_name ;
struct TYPE_2__ {char* id; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_1000baseT_Half_BIT ; 
 int FEC_QUIRK_HAS_GBIT ; 
 scalar_t__ FUNC0 (struct phy_device*) ; 
 int MII_BUS_ID_SIZE ; 
 char* PHY_ID_FMT ; 
 int PHY_MAX_ADDR ; 
 int FUNC1 (struct phy_device*) ; 
 int /*<<< orphan*/  fec_enet_adjust_link ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 struct fec_enet_private* FUNC5 (struct net_device*) ; 
 struct phy_device* FUNC6 (struct net_device*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct phy_device*) ; 
 struct phy_device* FUNC8 (struct net_device*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct phy_device*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 

__attribute__((used)) static int FUNC14(struct net_device *ndev)
{
	struct fec_enet_private *fep = FUNC5(ndev);
	struct phy_device *phy_dev = NULL;
	char mdio_bus_id[MII_BUS_ID_SIZE];
	char phy_name[MII_BUS_ID_SIZE + 3];
	int phy_id;
	int dev_id = fep->dev_id;

	if (fep->phy_node) {
		phy_dev = FUNC6(ndev, fep->phy_node,
					 &fec_enet_adjust_link, 0,
					 fep->phy_interface);
		if (!phy_dev) {
			FUNC3(ndev, "Unable to connect to phy\n");
			return -ENODEV;
		}
	} else {
		/* check for attached phy */
		for (phy_id = 0; (phy_id < PHY_MAX_ADDR); phy_id++) {
			if (!FUNC2(fep->mii_bus, phy_id))
				continue;
			if (dev_id--)
				continue;
			FUNC13(mdio_bus_id, fep->mii_bus->id, MII_BUS_ID_SIZE);
			break;
		}

		if (phy_id >= PHY_MAX_ADDR) {
			FUNC4(ndev, "no PHY, assuming direct connection to switch\n");
			FUNC13(mdio_bus_id, "fixed-0", MII_BUS_ID_SIZE);
			phy_id = 0;
		}

		FUNC12(phy_name, sizeof(phy_name),
			 PHY_ID_FMT, mdio_bus_id, phy_id);
		phy_dev = FUNC8(ndev, phy_name, &fec_enet_adjust_link,
				      fep->phy_interface);
	}

	if (FUNC0(phy_dev)) {
		FUNC3(ndev, "could not attach to PHY\n");
		return FUNC1(phy_dev);
	}

	/* mask with MAC supported features */
	if (fep->quirks & FEC_QUIRK_HAS_GBIT) {
		FUNC10(phy_dev, 1000);
		FUNC9(phy_dev,
				     ETHTOOL_LINK_MODE_1000baseT_Half_BIT);
#if !defined(CONFIG_M5272)
		FUNC11(phy_dev);
#endif
	}
	else
		FUNC10(phy_dev, 100);

	fep->link = 0;
	fep->full_duplex = 0;

	FUNC7(phy_dev);

	return 0;
}