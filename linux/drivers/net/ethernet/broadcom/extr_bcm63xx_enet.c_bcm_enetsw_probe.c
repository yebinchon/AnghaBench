
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct net_device {int * ethtool_ops; int * netdev_ops; int mtu; int dev_addr; } ;
struct bcm_enet_priv {int enet_is_sw; int irq_rx; int irq_tx; int tx_chan; int mac_clk; struct net_device* net_dev; struct platform_device* pdev; int enetsw_mdio_lock; int napi; int rx_timeout; int rx_lock; scalar_t__ rx_chan; int base; int dma_chan_width; int dma_chan_int_mask; int dma_chan_en_mask; int dma_has_sram; int num_ports; int used_ports; int dma_maxburst; int tx_ring_size; int rx_ring_size; } ;
struct bcm63xx_enetsw_platform_data {int dma_chan_width; int dma_chan_int_mask; int dma_chan_en_mask; int dma_has_sram; int num_ports; int used_ports; int mac_addr; } ;


 int BCMENETSW_DMA_MAXBURST ;
 int BCMENET_DEF_RX_DESC ;
 int BCMENET_DEF_TX_DESC ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int ETH_ALEN ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 struct net_device* alloc_etherdev (int) ;
 int bcm_enet_change_mtu (struct net_device*,int ) ;
 int bcm_enet_poll ;
 int bcm_enet_refill_rx_timer ;
 int * bcm_enet_shared_base ;
 int bcm_enetsw_ethtool_ops ;
 int bcm_enetsw_ops ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 struct bcm63xx_enetsw_platform_data* dev_get_platdata (int *) ;
 int devm_clk_get (int *,char*) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 int free_netdev (struct net_device*) ;
 int memcpy (int ,int ,int) ;
 struct bcm_enet_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_napi_add (struct net_device*,int *,int ,int) ;
 int platform_get_irq (struct platform_device*,int) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct net_device*) ;
 int register_netdev (struct net_device*) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int bcm_enetsw_probe(struct platform_device *pdev)
{
 struct bcm_enet_priv *priv;
 struct net_device *dev;
 struct bcm63xx_enetsw_platform_data *pd;
 struct resource *res_mem;
 int ret, irq_rx, irq_tx;

 if (!bcm_enet_shared_base[0])
  return -EPROBE_DEFER;

 res_mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 irq_rx = platform_get_irq(pdev, 0);
 irq_tx = platform_get_irq(pdev, 1);
 if (!res_mem || irq_rx < 0)
  return -ENODEV;

 ret = 0;
 dev = alloc_etherdev(sizeof(*priv));
 if (!dev)
  return -ENOMEM;
 priv = netdev_priv(dev);


 priv->enet_is_sw = 1;
 priv->irq_rx = irq_rx;
 priv->irq_tx = irq_tx;
 priv->rx_ring_size = BCMENET_DEF_RX_DESC;
 priv->tx_ring_size = BCMENET_DEF_TX_DESC;
 priv->dma_maxburst = BCMENETSW_DMA_MAXBURST;

 pd = dev_get_platdata(&pdev->dev);
 if (pd) {
  memcpy(dev->dev_addr, pd->mac_addr, ETH_ALEN);
  memcpy(priv->used_ports, pd->used_ports,
         sizeof(pd->used_ports));
  priv->num_ports = pd->num_ports;
  priv->dma_has_sram = pd->dma_has_sram;
  priv->dma_chan_en_mask = pd->dma_chan_en_mask;
  priv->dma_chan_int_mask = pd->dma_chan_int_mask;
  priv->dma_chan_width = pd->dma_chan_width;
 }

 ret = bcm_enet_change_mtu(dev, dev->mtu);
 if (ret)
  goto out;

 priv->base = devm_ioremap_resource(&pdev->dev, res_mem);
 if (IS_ERR(priv->base)) {
  ret = PTR_ERR(priv->base);
  goto out;
 }

 priv->mac_clk = devm_clk_get(&pdev->dev, "enetsw");
 if (IS_ERR(priv->mac_clk)) {
  ret = PTR_ERR(priv->mac_clk);
  goto out;
 }
 ret = clk_prepare_enable(priv->mac_clk);
 if (ret)
  goto out;

 priv->rx_chan = 0;
 priv->tx_chan = 1;
 spin_lock_init(&priv->rx_lock);


 timer_setup(&priv->rx_timeout, bcm_enet_refill_rx_timer, 0);


 dev->netdev_ops = &bcm_enetsw_ops;
 netif_napi_add(dev, &priv->napi, bcm_enet_poll, 16);
 dev->ethtool_ops = &bcm_enetsw_ethtool_ops;
 SET_NETDEV_DEV(dev, &pdev->dev);

 spin_lock_init(&priv->enetsw_mdio_lock);

 ret = register_netdev(dev);
 if (ret)
  goto out_disable_clk;

 netif_carrier_off(dev);
 platform_set_drvdata(pdev, dev);
 priv->pdev = pdev;
 priv->net_dev = dev;

 return 0;

out_disable_clk:
 clk_disable_unprepare(priv->mac_clk);
out:
 free_netdev(dev);
 return ret;
}
