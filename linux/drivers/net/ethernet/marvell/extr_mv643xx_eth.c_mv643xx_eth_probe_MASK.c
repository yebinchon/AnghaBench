#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_11__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_4__ dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  addr; } ;
struct phy_device {TYPE_1__ mdio; } ;
struct net_device {int watchdog_timeo; int features; int vlan_features; int hw_features; int min_mtu; int max_mtu; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  gso_max_segs; int /*<<< orphan*/  priv_flags; scalar_t__ base_addr; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  irq; int /*<<< orphan*/ * ethtool_ops; } ;
struct TYPE_9__ {scalar_t__ expires; } ;
struct mv643xx_eth_private {int port_num; int t_clk; scalar_t__ tx_desc_sram_size; struct phy_device* clk; TYPE_3__* shared; TYPE_2__ rx_oom; int /*<<< orphan*/  napi; int /*<<< orphan*/  tx_timeout_task; int /*<<< orphan*/  mib_counters_lock; TYPE_2__ mib_counters_timer; struct net_device* dev; int /*<<< orphan*/  rxq_count; int /*<<< orphan*/  txq_count; scalar_t__ base; } ;
struct mv643xx_eth_platform_data {int port_number; scalar_t__ phy_addr; int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; scalar_t__ phy_node; int /*<<< orphan*/ * shared; } ;
struct TYPE_10__ {scalar_t__ win_protect; struct phy_device* clk; scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CLK125_BYPASS_EN ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int HZ ; 
 int /*<<< orphan*/  IFF_UNICAST_FLT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 scalar_t__ FUNC2 (struct phy_device*) ; 
 scalar_t__ MV643XX_ETH_PHY_NONE ; 
 int /*<<< orphan*/  MV643XX_MAX_TSO_SEGS ; 
 int /*<<< orphan*/  NAPI_POLL_WEIGHT ; 
 int NETIF_F_IP_CSUM ; 
 int NETIF_F_RXCSUM ; 
 int NETIF_F_SG ; 
 int NETIF_F_TSO ; 
 int PORT_SDMA_CONFIG_DEFAULT_VALUE ; 
 int /*<<< orphan*/  PORT_SERIAL_CONTROL1 ; 
 int FUNC3 (struct phy_device*) ; 
 int /*<<< orphan*/  SDMA_CONFIG ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct net_device* FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct phy_device*) ; 
 void* FUNC8 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,char*) ; 
 struct mv643xx_eth_platform_data* FUNC11 (TYPE_4__*) ; 
 struct phy_device* FUNC12 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct mv643xx_eth_private*) ; 
 int /*<<< orphan*/  FUNC15 (struct mv643xx_eth_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC16 (struct mv643xx_eth_private*) ; 
 int /*<<< orphan*/  mib_counters_timer_wrapper ; 
 int /*<<< orphan*/  mv643xx_eth_adjust_link ; 
 int /*<<< orphan*/  mv643xx_eth_ethtool_ops ; 
 int /*<<< orphan*/  mv643xx_eth_netdev_ops ; 
 int /*<<< orphan*/  mv643xx_eth_poll ; 
 int /*<<< orphan*/  FUNC17 (struct net_device*,char*,...) ; 
 struct mv643xx_eth_private* FUNC18 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct net_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,char*) ; 
 struct phy_device* FUNC24 (struct net_device*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  oom_timer_wrapper ; 
 int /*<<< orphan*/  FUNC25 (struct mv643xx_eth_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct mv643xx_eth_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct phy_device* FUNC27 (struct mv643xx_eth_private*,scalar_t__) ; 
 TYPE_3__* FUNC28 (int /*<<< orphan*/ *) ; 
 struct resource* FUNC29 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct platform_device*,struct mv643xx_eth_private*) ; 
 int FUNC31 (struct mv643xx_eth_private*,int /*<<< orphan*/ ) ; 
 int FUNC32 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC33 (struct mv643xx_eth_private*,struct mv643xx_eth_platform_data*) ; 
 int /*<<< orphan*/  FUNC34 (struct mv643xx_eth_private*,int) ; 
 int /*<<< orphan*/  FUNC35 (struct mv643xx_eth_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC37 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tx_timeout_task ; 
 int /*<<< orphan*/  FUNC38 (struct mv643xx_eth_private*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC39 (struct mv643xx_eth_private*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC40(struct platform_device *pdev)
{
	struct mv643xx_eth_platform_data *pd;
	struct mv643xx_eth_private *mp;
	struct net_device *dev;
	struct phy_device *phydev = NULL;
	struct resource *res;
	int err;

	pd = FUNC11(&pdev->dev);
	if (pd == NULL) {
		FUNC10(&pdev->dev, "no mv643xx_eth_platform_data\n");
		return -ENODEV;
	}

	if (pd->shared == NULL) {
		FUNC10(&pdev->dev, "no mv643xx_eth_platform_data->shared\n");
		return -ENODEV;
	}

	dev = FUNC6(sizeof(struct mv643xx_eth_private), 8);
	if (!dev)
		return -ENOMEM;

	FUNC4(dev, &pdev->dev);
	mp = FUNC18(dev);
	FUNC30(pdev, mp);

	mp->shared = FUNC28(pd->shared);
	mp->base = mp->shared->base + 0x0400 + (pd->port_number << 10);
	mp->port_num = pd->port_number;

	mp->dev = dev;

	/* Kirkwood resets some registers on gated clocks. Especially
	 * CLK125_BYPASS_EN must be cleared but is not available on
	 * all other SoCs/System Controllers using this driver.
	 */
	if (FUNC23(pdev->dev.of_node,
				    "marvell,kirkwood-eth-port"))
		FUNC39(mp, PORT_SERIAL_CONTROL1,
		     FUNC31(mp, PORT_SERIAL_CONTROL1) & ~CLK125_BYPASS_EN);

	/*
	 * Start with a default rate, and if there is a clock, allow
	 * it to override the default.
	 */
	mp->t_clk = 133000000;
	mp->clk = FUNC12(&pdev->dev, NULL);
	if (!FUNC2(mp->clk)) {
		FUNC9(mp->clk);
		mp->t_clk = FUNC8(mp->clk);
	} else if (!FUNC2(mp->shared->clk)) {
		mp->t_clk = FUNC8(mp->shared->clk);
	}

	FUNC33(mp, pd);
	FUNC22(dev, mp->txq_count);
	FUNC21(dev, mp->rxq_count);

	err = 0;
	if (pd->phy_node) {
		phydev = FUNC24(mp->dev, pd->phy_node,
					mv643xx_eth_adjust_link, 0,
					FUNC14(mp));
		if (!phydev)
			err = -ENODEV;
		else
			FUNC25(mp, phydev->mdio.addr);
	} else if (pd->phy_addr != MV643XX_ETH_PHY_NONE) {
		phydev = FUNC27(mp, pd->phy_addr);

		if (FUNC2(phydev))
			err = FUNC3(phydev);
		else
			FUNC26(mp, pd->speed, pd->duplex);
	}
	if (err == -ENODEV) {
		err = -EPROBE_DEFER;
		goto out;
	}
	if (err)
		goto out;

	dev->ethtool_ops = &mv643xx_eth_ethtool_ops;

	FUNC15(mp, pd->speed, pd->duplex);


	FUNC16(mp);

	FUNC37(&mp->mib_counters_timer, mib_counters_timer_wrapper, 0);
	mp->mib_counters_timer.expires = jiffies + 30 * HZ;

	FUNC36(&mp->mib_counters_lock);

	FUNC1(&mp->tx_timeout_task, tx_timeout_task);

	FUNC20(dev, &mp->napi, mv643xx_eth_poll, NAPI_POLL_WEIGHT);

	FUNC37(&mp->rx_oom, oom_timer_wrapper, 0);


	res = FUNC29(pdev, IORESOURCE_IRQ, 0);
	FUNC0(!res);
	dev->irq = res->start;

	dev->netdev_ops = &mv643xx_eth_netdev_ops;

	dev->watchdog_timeo = 2 * HZ;
	dev->base_addr = 0;

	dev->features = NETIF_F_SG | NETIF_F_IP_CSUM | NETIF_F_TSO;
	dev->vlan_features = dev->features;

	dev->features |= NETIF_F_RXCSUM;
	dev->hw_features = dev->features;

	dev->priv_flags |= IFF_UNICAST_FLT;
	dev->gso_max_segs = MV643XX_MAX_TSO_SEGS;

	/* MTU range: 64 - 9500 */
	dev->min_mtu = 64;
	dev->max_mtu = 9500;

	if (mp->shared->win_protect)
		FUNC38(mp, FUNC5(mp->port_num), mp->shared->win_protect);

	FUNC19(dev);

	FUNC39(mp, SDMA_CONFIG, PORT_SDMA_CONFIG_DEFAULT_VALUE);

	FUNC34(mp, 250);
	FUNC35(mp, 0);

	err = FUNC32(dev);
	if (err)
		goto out;

	FUNC17(dev, "port %d with MAC address %pM\n",
		      mp->port_num, dev->dev_addr);

	if (mp->tx_desc_sram_size > 0)
		FUNC17(dev, "configured with sram\n");

	return 0;

out:
	if (!FUNC2(mp->clk))
		FUNC7(mp->clk);
	FUNC13(dev);

	return err;
}