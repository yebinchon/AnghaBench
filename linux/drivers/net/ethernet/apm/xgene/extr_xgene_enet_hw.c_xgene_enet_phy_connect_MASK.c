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
struct xgene_enet_pdata {int /*<<< orphan*/  phy_speed; int /*<<< orphan*/  phy_mode; TYPE_1__* pdev; } ;
struct phy_device {int dummy; } ;
struct net_device {int dummy; } ;
struct device_node {int dummy; } ;
struct device {scalar_t__ of_node; } ;
struct acpi_device {struct phy_device* driver_data; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_1000baseT_Half_BIT ; 
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_100baseT_Half_BIT ; 
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_10baseT_Half_BIT ; 
 int /*<<< orphan*/  SPEED_UNKNOWN ; 
 struct acpi_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 
 struct xgene_enet_pdata* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 struct device_node* FUNC4 (scalar_t__,char*,int) ; 
 struct phy_device* FUNC5 (struct net_device*,struct device_node*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct net_device*,struct phy_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct phy_device*) ; 
 int /*<<< orphan*/  xgene_enet_adjust_link ; 

int FUNC9(struct net_device *ndev)
{
	struct xgene_enet_pdata *pdata = FUNC2(ndev);
	struct device_node *np;
	struct phy_device *phy_dev;
	struct device *dev = &pdata->pdev->dev;
	int i;

	if (dev->of_node) {
		for (i = 0 ; i < 2; i++) {
			np = FUNC4(dev->of_node, "phy-handle", i);
			phy_dev = FUNC5(ndev, np,
						 &xgene_enet_adjust_link,
						 0, pdata->phy_mode);
			FUNC3(np);
			if (phy_dev)
				break;
		}

		if (!phy_dev) {
			FUNC1(ndev, "Could not connect to PHY\n");
			return -ENODEV;
		}
	} else {
#ifdef CONFIG_ACPI
		struct acpi_device *adev = acpi_phy_find_device(dev);
		if (adev)
			phy_dev = adev->driver_data;
		else
			phy_dev = NULL;

		if (!phy_dev ||
		    phy_connect_direct(ndev, phy_dev, &xgene_enet_adjust_link,
				       pdata->phy_mode)) {
			netdev_err(ndev, "Could not connect to PHY\n");
			return  -ENODEV;
		}
#else
		return -ENODEV;
#endif
	}

	pdata->phy_speed = SPEED_UNKNOWN;
	FUNC7(phy_dev, ETHTOOL_LINK_MODE_10baseT_Half_BIT);
	FUNC7(phy_dev, ETHTOOL_LINK_MODE_100baseT_Half_BIT);
	FUNC7(phy_dev, ETHTOOL_LINK_MODE_1000baseT_Half_BIT);
	FUNC8(phy_dev);

	return 0;
}