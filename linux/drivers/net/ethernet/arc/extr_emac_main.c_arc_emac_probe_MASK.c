#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct phy_device {int /*<<< orphan*/  phy_id; TYPE_2__* drv; } ;
struct TYPE_3__ {struct device* parent; } ;
struct net_device {unsigned int irq; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  name; int /*<<< orphan*/  watchdog_timeo; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct arc_emac_priv {char const* regs; scalar_t__ clk; int /*<<< orphan*/  napi; scalar_t__ txbd_dma; scalar_t__ rxbd_dma; scalar_t__ rxbd; scalar_t__ txbd; struct device* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARC_EMAC_NAPI_WEIGHT ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (char const*) ; 
 int FUNC1 (char const*) ; 
 scalar_t__ RX_BD_NUM ; 
 scalar_t__ RX_RING_SZ ; 
 int /*<<< orphan*/  R_ID ; 
 int /*<<< orphan*/  R_POLLRATE ; 
 scalar_t__ TX_RING_SZ ; 
 int /*<<< orphan*/  TX_TIMEOUT ; 
 int /*<<< orphan*/  arc_emac_adjust_link ; 
 int /*<<< orphan*/  arc_emac_ethtool_ops ; 
 int /*<<< orphan*/  arc_emac_intr ; 
 int /*<<< orphan*/  arc_emac_netdev_ops ; 
 int /*<<< orphan*/  arc_emac_poll ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int FUNC3 (struct arc_emac_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct arc_emac_priv*) ; 
 unsigned int FUNC5 (struct arc_emac_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct arc_emac_priv*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 unsigned int FUNC8 (scalar_t__) ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (struct device*,char*,unsigned int,...) ; 
 char const* FUNC13 (struct device*,struct resource*) ; 
 int FUNC14 (struct device*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 scalar_t__ FUNC15 (struct device*,scalar_t__,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char const*) ; 
 unsigned int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct arc_emac_priv* FUNC19 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct resource*) ; 
 char* FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct device_node*) ; 
 struct device_node* FUNC25 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct phy_device* FUNC26 (struct net_device*,struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ,char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC28 (struct phy_device*) ; 
 int FUNC29 (struct net_device*) ; 

int FUNC30(struct net_device *ndev, int interface)
{
	struct device *dev = ndev->dev.parent;
	struct resource res_regs;
	struct device_node *phy_node;
	struct phy_device *phydev = NULL;
	struct arc_emac_priv *priv;
	const char *mac_addr;
	unsigned int id, clock_frequency, irq;
	int err;

	/* Get PHY from device tree */
	phy_node = FUNC25(dev->of_node, "phy", 0);
	if (!phy_node) {
		FUNC11(dev, "failed to retrieve phy description from device tree\n");
		return -ENODEV;
	}

	/* Get EMAC registers base address from device tree */
	err = FUNC22(dev->of_node, 0, &res_regs);
	if (err) {
		FUNC11(dev, "failed to retrieve registers base from device tree\n");
		err = -ENODEV;
		goto out_put_node;
	}

	/* Get IRQ from device tree */
	irq = FUNC18(dev->of_node, 0);
	if (!irq) {
		FUNC11(dev, "failed to retrieve <irq> value from device tree\n");
		err = -ENODEV;
		goto out_put_node;
	}

	ndev->netdev_ops = &arc_emac_netdev_ops;
	ndev->ethtool_ops = &arc_emac_ethtool_ops;
	ndev->watchdog_timeo = TX_TIMEOUT;

	priv = FUNC19(ndev);
	priv->dev = dev;

	priv->regs = FUNC13(dev, &res_regs);
	if (FUNC0(priv->regs)) {
		err = FUNC1(priv->regs);
		goto out_put_node;
	}

	FUNC10(dev, "Registers base address is 0x%p\n", priv->regs);

	if (priv->clk) {
		err = FUNC9(priv->clk);
		if (err) {
			FUNC11(dev, "failed to enable clock\n");
			goto out_put_node;
		}

		clock_frequency = FUNC8(priv->clk);
	} else {
		/* Get CPU clock frequency from device tree */
		if (FUNC27(dev->of_node, "clock-frequency",
					 &clock_frequency)) {
			FUNC11(dev, "failed to retrieve <clock-frequency> from device tree\n");
			err = -EINVAL;
			goto out_put_node;
		}
	}

	id = FUNC5(priv, R_ID);

	/* Check for EMAC revision 5 or 7, magic number */
	if (!(id == 0x0005fd02 || id == 0x0007fd02)) {
		FUNC11(dev, "ARC EMAC not detected, id=0x%x\n", id);
		err = -ENODEV;
		goto out_clken;
	}
	FUNC12(dev, "ARC EMAC detected with id: 0x%x\n", id);

	/* Set poll rate so that it polls every 1 ms */
	FUNC6(priv, R_POLLRATE, clock_frequency / 1000000);

	ndev->irq = irq;
	FUNC12(dev, "IRQ is %d\n", ndev->irq);

	/* Register interrupt handler for device */
	err = FUNC14(dev, ndev->irq, arc_emac_intr, 0,
			       ndev->name, ndev);
	if (err) {
		FUNC11(dev, "could not allocate IRQ\n");
		goto out_clken;
	}

	/* Get MAC address from device tree */
	mac_addr = FUNC23(dev->of_node);

	if (!FUNC0(mac_addr))
		FUNC17(ndev->dev_addr, mac_addr);
	else
		FUNC16(ndev);

	FUNC2(ndev);
	FUNC12(dev, "MAC address is now %pM\n", ndev->dev_addr);

	/* Do 1 allocation instead of 2 separate ones for Rx and Tx BD rings */
	priv->rxbd = FUNC15(dev, RX_RING_SZ + TX_RING_SZ,
					 &priv->rxbd_dma, GFP_KERNEL);

	if (!priv->rxbd) {
		FUNC11(dev, "failed to allocate data buffers\n");
		err = -ENOMEM;
		goto out_clken;
	}

	priv->txbd = priv->rxbd + RX_BD_NUM;

	priv->txbd_dma = priv->rxbd_dma + RX_RING_SZ;
	FUNC10(dev, "EMAC Device addr: Rx Ring [0x%x], Tx Ring[%x]\n",
		(unsigned int)priv->rxbd_dma, (unsigned int)priv->txbd_dma);

	err = FUNC3(priv);
	if (err) {
		FUNC11(dev, "failed to probe MII bus\n");
		goto out_clken;
	}

	phydev = FUNC26(ndev, phy_node, arc_emac_adjust_link, 0,
				interface);
	if (!phydev) {
		FUNC11(dev, "of_phy_connect() failed\n");
		err = -ENODEV;
		goto out_mdio;
	}

	FUNC12(dev, "connected to %s phy with id 0x%x\n",
		 phydev->drv->name, phydev->phy_id);

	FUNC20(ndev, &priv->napi, arc_emac_poll, ARC_EMAC_NAPI_WEIGHT);

	err = FUNC29(ndev);
	if (err) {
		FUNC11(dev, "failed to register network device\n");
		goto out_netif_api;
	}

	FUNC24(phy_node);
	return 0;

out_netif_api:
	FUNC21(&priv->napi);
	FUNC28(phydev);
out_mdio:
	FUNC4(priv);
out_clken:
	if (priv->clk)
		FUNC7(priv->clk);
out_put_node:
	FUNC24(phy_node);

	return err;
}