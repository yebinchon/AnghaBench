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
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct net_device {int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  mtu; int /*<<< orphan*/  dev_addr; } ;
struct bcm_enet_priv {int enet_is_sw; int irq_rx; int irq_tx; int tx_chan; int /*<<< orphan*/  mac_clk; struct net_device* net_dev; struct platform_device* pdev; int /*<<< orphan*/  enetsw_mdio_lock; int /*<<< orphan*/  napi; int /*<<< orphan*/  rx_timeout; int /*<<< orphan*/  rx_lock; scalar_t__ rx_chan; int /*<<< orphan*/  base; int /*<<< orphan*/  dma_chan_width; int /*<<< orphan*/  dma_chan_int_mask; int /*<<< orphan*/  dma_chan_en_mask; int /*<<< orphan*/  dma_has_sram; int /*<<< orphan*/  num_ports; int /*<<< orphan*/  used_ports; int /*<<< orphan*/  dma_maxburst; int /*<<< orphan*/  tx_ring_size; int /*<<< orphan*/  rx_ring_size; } ;
struct bcm63xx_enetsw_platform_data {int /*<<< orphan*/  dma_chan_width; int /*<<< orphan*/  dma_chan_int_mask; int /*<<< orphan*/  dma_chan_en_mask; int /*<<< orphan*/  dma_has_sram; int /*<<< orphan*/  num_ports; int /*<<< orphan*/  used_ports; int /*<<< orphan*/  mac_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCMENETSW_DMA_MAXBURST ; 
 int /*<<< orphan*/  BCMENET_DEF_RX_DESC ; 
 int /*<<< orphan*/  BCMENET_DEF_TX_DESC ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC3 (int) ; 
 int FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bcm_enet_poll ; 
 int /*<<< orphan*/  bcm_enet_refill_rx_timer ; 
 int /*<<< orphan*/ * bcm_enet_shared_base ; 
 int /*<<< orphan*/  bcm_enetsw_ethtool_ops ; 
 int /*<<< orphan*/  bcm_enetsw_ops ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 struct bcm63xx_enetsw_platform_data* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct resource*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct bcm_enet_priv* FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC15 (struct platform_device*,int) ; 
 struct resource* FUNC16 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct net_device*) ; 
 int FUNC18 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct bcm_enet_priv *priv;
	struct net_device *dev;
	struct bcm63xx_enetsw_platform_data *pd;
	struct resource *res_mem;
	int ret, irq_rx, irq_tx;

	if (!bcm_enet_shared_base[0])
		return -EPROBE_DEFER;

	res_mem = FUNC16(pdev, IORESOURCE_MEM, 0);
	irq_rx = FUNC15(pdev, 0);
	irq_tx = FUNC15(pdev, 1);
	if (!res_mem || irq_rx < 0)
		return -ENODEV;

	ret = 0;
	dev = FUNC3(sizeof(*priv));
	if (!dev)
		return -ENOMEM;
	priv = FUNC12(dev);

	/* initialize default and fetch platform data */
	priv->enet_is_sw = true;
	priv->irq_rx = irq_rx;
	priv->irq_tx = irq_tx;
	priv->rx_ring_size = BCMENET_DEF_RX_DESC;
	priv->tx_ring_size = BCMENET_DEF_TX_DESC;
	priv->dma_maxburst = BCMENETSW_DMA_MAXBURST;

	pd = FUNC7(&pdev->dev);
	if (pd) {
		FUNC11(dev->dev_addr, pd->mac_addr, ETH_ALEN);
		FUNC11(priv->used_ports, pd->used_ports,
		       sizeof(pd->used_ports));
		priv->num_ports = pd->num_ports;
		priv->dma_has_sram = pd->dma_has_sram;
		priv->dma_chan_en_mask = pd->dma_chan_en_mask;
		priv->dma_chan_int_mask = pd->dma_chan_int_mask;
		priv->dma_chan_width = pd->dma_chan_width;
	}

	ret = FUNC4(dev, dev->mtu);
	if (ret)
		goto out;

	priv->base = FUNC9(&pdev->dev, res_mem);
	if (FUNC0(priv->base)) {
		ret = FUNC1(priv->base);
		goto out;
	}

	priv->mac_clk = FUNC8(&pdev->dev, "enetsw");
	if (FUNC0(priv->mac_clk)) {
		ret = FUNC1(priv->mac_clk);
		goto out;
	}
	ret = FUNC6(priv->mac_clk);
	if (ret)
		goto out;

	priv->rx_chan = 0;
	priv->tx_chan = 1;
	FUNC19(&priv->rx_lock);

	/* init rx timeout (used for oom) */
	FUNC20(&priv->rx_timeout, bcm_enet_refill_rx_timer, 0);

	/* register netdevice */
	dev->netdev_ops = &bcm_enetsw_ops;
	FUNC14(dev, &priv->napi, bcm_enet_poll, 16);
	dev->ethtool_ops = &bcm_enetsw_ethtool_ops;
	FUNC2(dev, &pdev->dev);

	FUNC19(&priv->enetsw_mdio_lock);

	ret = FUNC18(dev);
	if (ret)
		goto out_disable_clk;

	FUNC13(dev);
	FUNC17(pdev, dev);
	priv->pdev = pdev;
	priv->net_dev = dev;

	return 0;

out_disable_clk:
	FUNC5(priv->mac_clk);
out:
	FUNC10(dev);
	return ret;
}