
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct platform_device {char* name; int id; int dev; } ;
struct net_device {scalar_t__ max_mtu; scalar_t__ min_mtu; int * ethtool_ops; int * netdev_ops; int dev_addr; int irq; int mtu; } ;
struct mii_bus {char* name; int phy_mask; int * irq; int id; int write; int read; struct bcm_enet_priv* priv; int * parent; } ;
struct bcm_enet_priv {int enet_is_sw; int phy_id; int use_external_mii; int * mac_clk; int * phy_clk; struct mii_bus* mii_bus; struct net_device* net_dev; struct platform_device* pdev; int napi; int mib_update_task; int mib_update_lock; int rx_timeout; int rx_lock; int phy_interrupt; scalar_t__ has_phy_interrupt; scalar_t__ has_phy; int tx_chan; int rx_chan; int dma_desc_shift; int dma_has_sram; int dma_chan_width; int dma_chan_int_mask; int dma_chan_en_mask; int force_speed_100; int force_duplex_full; int pause_tx; int pause_rx; int pause_auto; int tx_ring_size; int rx_ring_size; int irq_tx; int irq_rx; int irq; int * base; int dma_maxburst; } ;
struct bcm63xx_enet_platform_data {int phy_id; scalar_t__ (* mii_config ) (struct net_device*,int,int ,int ) ;int tx_chan; int rx_chan; int dma_desc_shift; int dma_has_sram; int dma_chan_width; int dma_chan_int_mask; int dma_chan_en_mask; int force_speed_100; int force_duplex_full; int pause_tx; int pause_rx; int pause_auto; int use_internal_phy; int phy_interrupt; scalar_t__ has_phy_interrupt; scalar_t__ has_phy; int mac_addr; } ;


 int BCMENET_DEF_RX_DESC ;
 int BCMENET_DEF_TX_DESC ;
 int BCMENET_DMA_MAXBURST ;
 scalar_t__ BCMENET_MAX_MTU ;
 int ENET_MIB_REG (int) ;
 int ENET_MIB_REG_COUNT ;
 int ENET_MIISC_REG ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int ETH_ALEN ;
 scalar_t__ ETH_HLEN ;
 scalar_t__ ETH_ZLEN ;
 int INIT_WORK (int *,int ) ;
 int IORESOURCE_IRQ ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 scalar_t__ VLAN_ETH_HLEN ;
 struct net_device* alloc_etherdev (int) ;
 int bcm_enet_change_mtu (struct net_device*,int ) ;
 int bcm_enet_ethtool_ops ;
 int bcm_enet_hw_preinit (struct bcm_enet_priv*) ;
 int bcm_enet_mdio_read_mii ;
 int bcm_enet_mdio_read_phylib ;
 int bcm_enet_mdio_write_mii ;
 int bcm_enet_mdio_write_phylib ;
 int bcm_enet_ops ;
 int bcm_enet_poll ;
 int bcm_enet_refill_rx_timer ;
 int * bcm_enet_shared_base ;
 int bcm_enet_update_mib_counters_defer ;
 int clk_disable_unprepare (int *) ;
 int clk_prepare_enable (int *) ;
 int dev_err (int *,char*) ;
 struct bcm63xx_enet_platform_data* dev_get_platdata (int *) ;
 void* devm_clk_get (int *,char*) ;
 int * devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int enet_writel (struct bcm_enet_priv*,int ,int ) ;
 int free_netdev (struct net_device*) ;
 struct mii_bus* mdiobus_alloc () ;
 int mdiobus_free (struct mii_bus*) ;
 int mdiobus_register (struct mii_bus*) ;
 int mdiobus_unregister (struct mii_bus*) ;
 int memcpy (int ,int ,int ) ;
 int mutex_init (int *) ;
 struct bcm_enet_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_napi_add (struct net_device*,int *,int ,int) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct net_device*) ;
 int register_netdev (struct net_device*) ;
 int spin_lock_init (int *) ;
 int sprintf (int ,char*,char*,int) ;
 scalar_t__ stub1 (struct net_device*,int,int ,int ) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int bcm_enet_probe(struct platform_device *pdev)
{
 struct bcm_enet_priv *priv;
 struct net_device *dev;
 struct bcm63xx_enet_platform_data *pd;
 struct resource *res_irq, *res_irq_rx, *res_irq_tx;
 struct mii_bus *bus;
 int i, ret;

 if (!bcm_enet_shared_base[0])
  return -EPROBE_DEFER;

 res_irq = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 res_irq_rx = platform_get_resource(pdev, IORESOURCE_IRQ, 1);
 res_irq_tx = platform_get_resource(pdev, IORESOURCE_IRQ, 2);
 if (!res_irq || !res_irq_rx || !res_irq_tx)
  return -ENODEV;

 ret = 0;
 dev = alloc_etherdev(sizeof(*priv));
 if (!dev)
  return -ENOMEM;
 priv = netdev_priv(dev);

 priv->enet_is_sw = 0;
 priv->dma_maxburst = BCMENET_DMA_MAXBURST;

 ret = bcm_enet_change_mtu(dev, dev->mtu);
 if (ret)
  goto out;

 priv->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(priv->base)) {
  ret = PTR_ERR(priv->base);
  goto out;
 }

 dev->irq = priv->irq = res_irq->start;
 priv->irq_rx = res_irq_rx->start;
 priv->irq_tx = res_irq_tx->start;

 priv->mac_clk = devm_clk_get(&pdev->dev, "enet");
 if (IS_ERR(priv->mac_clk)) {
  ret = PTR_ERR(priv->mac_clk);
  goto out;
 }
 ret = clk_prepare_enable(priv->mac_clk);
 if (ret)
  goto out;


 priv->rx_ring_size = BCMENET_DEF_RX_DESC;
 priv->tx_ring_size = BCMENET_DEF_TX_DESC;

 pd = dev_get_platdata(&pdev->dev);
 if (pd) {
  memcpy(dev->dev_addr, pd->mac_addr, ETH_ALEN);
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

  priv->phy_clk = devm_clk_get(&pdev->dev, "ephy");
  if (IS_ERR(priv->phy_clk)) {
   ret = PTR_ERR(priv->phy_clk);
   priv->phy_clk = ((void*)0);
   goto out_disable_clk_mac;
  }
  ret = clk_prepare_enable(priv->phy_clk);
  if (ret)
   goto out_disable_clk_mac;
 }


 bcm_enet_hw_preinit(priv);


 if (priv->has_phy) {

  priv->mii_bus = mdiobus_alloc();
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
  sprintf(bus->id, "%s-%d", pdev->name, pdev->id);




  bus->phy_mask = ~(1 << priv->phy_id);

  if (priv->has_phy_interrupt)
   bus->irq[priv->phy_id] = priv->phy_interrupt;

  ret = mdiobus_register(bus);
  if (ret) {
   dev_err(&pdev->dev, "unable to register mdio bus\n");
   goto out_free_mdio;
  }
 } else {


  if (pd && pd->mii_config &&
      pd->mii_config(dev, 1, bcm_enet_mdio_read_mii,
       bcm_enet_mdio_write_mii)) {
   dev_err(&pdev->dev, "unable to configure mdio bus\n");
   goto out_uninit_hw;
  }
 }

 spin_lock_init(&priv->rx_lock);


 timer_setup(&priv->rx_timeout, bcm_enet_refill_rx_timer, 0);


 mutex_init(&priv->mib_update_lock);
 INIT_WORK(&priv->mib_update_task, bcm_enet_update_mib_counters_defer);


 for (i = 0; i < ENET_MIB_REG_COUNT; i++)
  enet_writel(priv, 0, ENET_MIB_REG(i));


 dev->netdev_ops = &bcm_enet_ops;
 netif_napi_add(dev, &priv->napi, bcm_enet_poll, 16);

 dev->ethtool_ops = &bcm_enet_ethtool_ops;

 dev->min_mtu = ETH_ZLEN - ETH_HLEN;
 dev->max_mtu = BCMENET_MAX_MTU - VLAN_ETH_HLEN;
 SET_NETDEV_DEV(dev, &pdev->dev);

 ret = register_netdev(dev);
 if (ret)
  goto out_unregister_mdio;

 netif_carrier_off(dev);
 platform_set_drvdata(pdev, dev);
 priv->pdev = pdev;
 priv->net_dev = dev;

 return 0;

out_unregister_mdio:
 if (priv->mii_bus)
  mdiobus_unregister(priv->mii_bus);

out_free_mdio:
 if (priv->mii_bus)
  mdiobus_free(priv->mii_bus);

out_uninit_hw:

 enet_writel(priv, 0, ENET_MIISC_REG);
 clk_disable_unprepare(priv->phy_clk);

out_disable_clk_mac:
 clk_disable_unprepare(priv->mac_clk);
out:
 free_netdev(dev);
 return ret;
}
