#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {char* name; int id; int /*<<< orphan*/  dev; } ;
struct net_device {scalar_t__ max_mtu; scalar_t__ min_mtu; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  irq; int /*<<< orphan*/  mtu; } ;
struct mii_bus {char* name; int phy_mask; int /*<<< orphan*/ * irq; int /*<<< orphan*/  id; int /*<<< orphan*/  write; int /*<<< orphan*/  read; struct bcm_enet_priv* priv; int /*<<< orphan*/ * parent; } ;
struct bcm_enet_priv {int enet_is_sw; int phy_id; int use_external_mii; int /*<<< orphan*/ * mac_clk; int /*<<< orphan*/ * phy_clk; struct mii_bus* mii_bus; struct net_device* net_dev; struct platform_device* pdev; int /*<<< orphan*/  napi; int /*<<< orphan*/  mib_update_task; int /*<<< orphan*/  mib_update_lock; int /*<<< orphan*/  rx_timeout; int /*<<< orphan*/  rx_lock; int /*<<< orphan*/  phy_interrupt; scalar_t__ has_phy_interrupt; scalar_t__ has_phy; int /*<<< orphan*/  tx_chan; int /*<<< orphan*/  rx_chan; int /*<<< orphan*/  dma_desc_shift; int /*<<< orphan*/  dma_has_sram; int /*<<< orphan*/  dma_chan_width; int /*<<< orphan*/  dma_chan_int_mask; int /*<<< orphan*/  dma_chan_en_mask; int /*<<< orphan*/  force_speed_100; int /*<<< orphan*/  force_duplex_full; int /*<<< orphan*/  pause_tx; int /*<<< orphan*/  pause_rx; int /*<<< orphan*/  pause_auto; int /*<<< orphan*/  tx_ring_size; int /*<<< orphan*/  rx_ring_size; int /*<<< orphan*/  irq_tx; int /*<<< orphan*/  irq_rx; int /*<<< orphan*/  irq; int /*<<< orphan*/ * base; int /*<<< orphan*/  dma_maxburst; } ;
struct bcm63xx_enet_platform_data {int phy_id; scalar_t__ (* mii_config ) (struct net_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  tx_chan; int /*<<< orphan*/  rx_chan; int /*<<< orphan*/  dma_desc_shift; int /*<<< orphan*/  dma_has_sram; int /*<<< orphan*/  dma_chan_width; int /*<<< orphan*/  dma_chan_int_mask; int /*<<< orphan*/  dma_chan_en_mask; int /*<<< orphan*/  force_speed_100; int /*<<< orphan*/  force_duplex_full; int /*<<< orphan*/  pause_tx; int /*<<< orphan*/  pause_rx; int /*<<< orphan*/  pause_auto; int /*<<< orphan*/  use_internal_phy; int /*<<< orphan*/  phy_interrupt; scalar_t__ has_phy_interrupt; scalar_t__ has_phy; int /*<<< orphan*/  mac_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCMENET_DEF_RX_DESC ; 
 int /*<<< orphan*/  BCMENET_DEF_TX_DESC ; 
 int /*<<< orphan*/  BCMENET_DMA_MAXBURST ; 
 scalar_t__ BCMENET_MAX_MTU ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENET_MIB_REG_COUNT ; 
 int /*<<< orphan*/  ENET_MIISC_REG ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ ETH_HLEN ; 
 scalar_t__ ETH_ZLEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ *) ; 
 scalar_t__ VLAN_ETH_HLEN ; 
 struct net_device* FUNC5 (int) ; 
 int FUNC6 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bcm_enet_ethtool_ops ; 
 int /*<<< orphan*/  FUNC7 (struct bcm_enet_priv*) ; 
 int /*<<< orphan*/  bcm_enet_mdio_read_mii ; 
 int /*<<< orphan*/  bcm_enet_mdio_read_phylib ; 
 int /*<<< orphan*/  bcm_enet_mdio_write_mii ; 
 int /*<<< orphan*/  bcm_enet_mdio_write_phylib ; 
 int /*<<< orphan*/  bcm_enet_ops ; 
 int /*<<< orphan*/  bcm_enet_poll ; 
 int /*<<< orphan*/  bcm_enet_refill_rx_timer ; 
 int /*<<< orphan*/ * bcm_enet_shared_base ; 
 int /*<<< orphan*/  bcm_enet_update_mib_counters_defer ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 struct bcm63xx_enet_platform_data* FUNC11 (int /*<<< orphan*/ *) ; 
 void* FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct bcm_enet_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*) ; 
 struct mii_bus* FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (struct mii_bus*) ; 
 int FUNC18 (struct mii_bus*) ; 
 int /*<<< orphan*/  FUNC19 (struct mii_bus*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 struct bcm_enet_priv* FUNC22 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC24 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct resource* FUNC25 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC26 (struct platform_device*,struct net_device*) ; 
 int FUNC27 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,char*,char*,int) ; 
 scalar_t__ FUNC30 (struct net_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC32(struct platform_device *pdev)
{
	struct bcm_enet_priv *priv;
	struct net_device *dev;
	struct bcm63xx_enet_platform_data *pd;
	struct resource *res_irq, *res_irq_rx, *res_irq_tx;
	struct mii_bus *bus;
	int i, ret;

	if (!bcm_enet_shared_base[0])
		return -EPROBE_DEFER;

	res_irq = FUNC25(pdev, IORESOURCE_IRQ, 0);
	res_irq_rx = FUNC25(pdev, IORESOURCE_IRQ, 1);
	res_irq_tx = FUNC25(pdev, IORESOURCE_IRQ, 2);
	if (!res_irq || !res_irq_rx || !res_irq_tx)
		return -ENODEV;

	ret = 0;
	dev = FUNC5(sizeof(*priv));
	if (!dev)
		return -ENOMEM;
	priv = FUNC22(dev);

	priv->enet_is_sw = false;
	priv->dma_maxburst = BCMENET_DMA_MAXBURST;

	ret = FUNC6(dev, dev->mtu);
	if (ret)
		goto out;

	priv->base = FUNC13(pdev, 0);
	if (FUNC2(priv->base)) {
		ret = FUNC3(priv->base);
		goto out;
	}

	dev->irq = priv->irq = res_irq->start;
	priv->irq_rx = res_irq_rx->start;
	priv->irq_tx = res_irq_tx->start;

	priv->mac_clk = FUNC12(&pdev->dev, "enet");
	if (FUNC2(priv->mac_clk)) {
		ret = FUNC3(priv->mac_clk);
		goto out;
	}
	ret = FUNC9(priv->mac_clk);
	if (ret)
		goto out;

	/* initialize default and fetch platform data */
	priv->rx_ring_size = BCMENET_DEF_RX_DESC;
	priv->tx_ring_size = BCMENET_DEF_TX_DESC;

	pd = FUNC11(&pdev->dev);
	if (pd) {
		FUNC20(dev->dev_addr, pd->mac_addr, ETH_ALEN);
		priv->has_phy = pd->has_phy;
		priv->phy_id = pd->phy_id;
		priv->has_phy_interrupt = pd->has_phy_interrupt;
		priv->phy_interrupt = pd->phy_interrupt;
		priv->use_external_mii = !pd->use_internal_phy;
		priv->pause_auto = pd->pause_auto;
		priv->pause_rx = pd->pause_rx;
		priv->pause_tx = pd->pause_tx;
		priv->force_duplex_full = pd->force_duplex_full;
		priv->force_speed_100 = pd->force_speed_100;
		priv->dma_chan_en_mask = pd->dma_chan_en_mask;
		priv->dma_chan_int_mask = pd->dma_chan_int_mask;
		priv->dma_chan_width = pd->dma_chan_width;
		priv->dma_has_sram = pd->dma_has_sram;
		priv->dma_desc_shift = pd->dma_desc_shift;
		priv->rx_chan = pd->rx_chan;
		priv->tx_chan = pd->tx_chan;
	}

	if (priv->has_phy && !priv->use_external_mii) {
		/* using internal PHY, enable clock */
		priv->phy_clk = FUNC12(&pdev->dev, "ephy");
		if (FUNC2(priv->phy_clk)) {
			ret = FUNC3(priv->phy_clk);
			priv->phy_clk = NULL;
			goto out_disable_clk_mac;
		}
		ret = FUNC9(priv->phy_clk);
		if (ret)
			goto out_disable_clk_mac;
	}

	/* do minimal hardware init to be able to probe mii bus */
	FUNC7(priv);

	/* MII bus registration */
	if (priv->has_phy) {

		priv->mii_bus = FUNC16();
		if (!priv->mii_bus) {
			ret = -ENOMEM;
			goto out_uninit_hw;
		}

		bus = priv->mii_bus;
		bus->name = "bcm63xx_enet MII bus";
		bus->parent = &pdev->dev;
		bus->priv = priv;
		bus->read = bcm_enet_mdio_read_phylib;
		bus->write = bcm_enet_mdio_write_phylib;
		FUNC29(bus->id, "%s-%d", pdev->name, pdev->id);

		/* only probe bus where we think the PHY is, because
		 * the mdio read operation return 0 instead of 0xffff
		 * if a slave is not present on hw */
		bus->phy_mask = ~(1 << priv->phy_id);

		if (priv->has_phy_interrupt)
			bus->irq[priv->phy_id] = priv->phy_interrupt;

		ret = FUNC18(bus);
		if (ret) {
			FUNC10(&pdev->dev, "unable to register mdio bus\n");
			goto out_free_mdio;
		}
	} else {

		/* run platform code to initialize PHY device */
		if (pd && pd->mii_config &&
		    pd->mii_config(dev, 1, bcm_enet_mdio_read_mii,
				   bcm_enet_mdio_write_mii)) {
			FUNC10(&pdev->dev, "unable to configure mdio bus\n");
			goto out_uninit_hw;
		}
	}

	FUNC28(&priv->rx_lock);

	/* init rx timeout (used for oom) */
	FUNC31(&priv->rx_timeout, bcm_enet_refill_rx_timer, 0);

	/* init the mib update lock&work */
	FUNC21(&priv->mib_update_lock);
	FUNC1(&priv->mib_update_task, bcm_enet_update_mib_counters_defer);

	/* zero mib counters */
	for (i = 0; i < ENET_MIB_REG_COUNT; i++)
		FUNC14(priv, 0, FUNC0(i));

	/* register netdevice */
	dev->netdev_ops = &bcm_enet_ops;
	FUNC24(dev, &priv->napi, bcm_enet_poll, 16);

	dev->ethtool_ops = &bcm_enet_ethtool_ops;
	/* MTU range: 46 - 2028 */
	dev->min_mtu = ETH_ZLEN - ETH_HLEN;
	dev->max_mtu = BCMENET_MAX_MTU - VLAN_ETH_HLEN;
	FUNC4(dev, &pdev->dev);

	ret = FUNC27(dev);
	if (ret)
		goto out_unregister_mdio;

	FUNC23(dev);
	FUNC26(pdev, dev);
	priv->pdev = pdev;
	priv->net_dev = dev;

	return 0;

out_unregister_mdio:
	if (priv->mii_bus)
		FUNC19(priv->mii_bus);

out_free_mdio:
	if (priv->mii_bus)
		FUNC17(priv->mii_bus);

out_uninit_hw:
	/* turn off mdc clock */
	FUNC14(priv, 0, ENET_MIISC_REG);
	FUNC8(priv->phy_clk);

out_disable_clk_mac:
	FUNC8(priv->mac_clk);
out:
	FUNC15(dev);
	return ret;
}