#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct resource {scalar_t__ start; } ;
struct platform_device {int id; int /*<<< orphan*/  dev; } ;
struct plat_cpmac_data {int phy_mask; int /*<<< orphan*/  dev_addr; } ;
struct phy_device {int dummy; } ;
struct net_device {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  irq; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; } ;
struct cpmac_priv {int ring_size; int /*<<< orphan*/  phy_name; int /*<<< orphan*/  msg_enable; struct net_device* dev; int /*<<< orphan*/  rx_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  napi; struct platform_device* pdev; } ;
typedef  int /*<<< orphan*/  mdio_bus_id ;
struct TYPE_3__ {char* id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPMAC_QUEUES ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct phy_device*) ; 
 int MII_BUS_ID_SIZE ; 
 char* PHY_ID_FMT ; 
 int /*<<< orphan*/  PHY_INTERFACE_MODE_MII ; 
 int PHY_MAX_ADDR ; 
 int FUNC1 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpmac_adjust_link ; 
 int /*<<< orphan*/  cpmac_ethtool_ops ; 
 TYPE_1__* cpmac_mii ; 
 int /*<<< orphan*/  cpmac_netdev_ops ; 
 int /*<<< orphan*/  cpmac_poll ; 
 int /*<<< orphan*/  debug_level ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct plat_cpmac_data* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ dumb_switch ; 
 scalar_t__ external_switch ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct cpmac_priv* FUNC10 (struct net_device*) ; 
 scalar_t__ FUNC11 (struct cpmac_priv*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (struct cpmac_priv*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct phy_device* FUNC15 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,char*) ; 
 struct resource* FUNC17 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (struct platform_device*,struct net_device*) ; 
 int FUNC19 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (char*,char*,int) ; 

__attribute__((used)) static int FUNC23(struct platform_device *pdev)
{
	int rc, phy_id;
	char mdio_bus_id[MII_BUS_ID_SIZE];
	struct resource *mem;
	struct cpmac_priv *priv;
	struct net_device *dev;
	struct plat_cpmac_data *pdata;
	struct phy_device *phydev = NULL;

	pdata = FUNC5(&pdev->dev);

	if (external_switch || dumb_switch) {
		FUNC22(mdio_bus_id, "fixed-0", MII_BUS_ID_SIZE); /* fixed phys bus */
		phy_id = pdev->id;
	} else {
		for (phy_id = 0; phy_id < PHY_MAX_ADDR; phy_id++) {
			if (!(pdata->phy_mask & (1 << phy_id)))
				continue;
			if (!FUNC8(cpmac_mii, phy_id))
				continue;
			FUNC22(mdio_bus_id, cpmac_mii->id, MII_BUS_ID_SIZE);
			break;
		}
	}

	if (phy_id == PHY_MAX_ADDR) {
		FUNC4(&pdev->dev, "no PHY present, falling back "
			"to switch on MDIO bus 0\n");
		FUNC22(mdio_bus_id, "fixed-0", MII_BUS_ID_SIZE); /* fixed phys bus */
		phy_id = pdev->id;
	}
	mdio_bus_id[sizeof(mdio_bus_id) - 1] = '\0';

	dev = FUNC3(sizeof(*priv), CPMAC_QUEUES);
	if (!dev)
		return -ENOMEM;

	FUNC2(dev, &pdev->dev);
	FUNC18(pdev, dev);
	priv = FUNC10(dev);

	priv->pdev = pdev;
	mem = FUNC17(pdev, IORESOURCE_MEM, "regs");
	if (!mem) {
		rc = -ENODEV;
		goto fail;
	}

	dev->irq = FUNC16(pdev, "irq");

	dev->netdev_ops = &cpmac_netdev_ops;
	dev->ethtool_ops = &cpmac_ethtool_ops;

	FUNC14(dev, &priv->napi, cpmac_poll, 64);

	FUNC21(&priv->lock);
	FUNC21(&priv->rx_lock);
	priv->dev = dev;
	priv->ring_size = 64;
	priv->msg_enable = FUNC12(debug_level, 0xff);
	FUNC9(dev->dev_addr, pdata->dev_addr, sizeof(pdata->dev_addr));

	FUNC20(priv->phy_name, MII_BUS_ID_SIZE, PHY_ID_FMT,
						mdio_bus_id, phy_id);

	phydev = FUNC15(dev, priv->phy_name, cpmac_adjust_link,
			     PHY_INTERFACE_MODE_MII);

	if (FUNC0(phydev)) {
		if (FUNC11(priv))
			FUNC4(&pdev->dev, "Could not attach to PHY\n");

		rc = FUNC1(phydev);
		goto fail;
	}

	rc = FUNC19(dev);
	if (rc) {
		FUNC4(&pdev->dev, "Could not register net device\n");
		goto fail;
	}

	if (FUNC13(priv)) {
		FUNC6(&pdev->dev, "regs: %p, irq: %d, phy: %s, "
			 "mac: %pM\n", (void *)mem->start, dev->irq,
			 priv->phy_name, dev->dev_addr);
	}

	return 0;

fail:
	FUNC7(dev);
	return rc;
}