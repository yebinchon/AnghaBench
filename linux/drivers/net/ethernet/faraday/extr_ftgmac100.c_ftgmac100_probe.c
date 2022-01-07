
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct resource {int start; } ;
struct TYPE_5__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct phy_device {int dummy; } ;
struct net_device {int watchdog_timeo; int irq; int hw_features; int features; int * netdev_ops; int * ethtool_ops; } ;
struct ftgmac100 {int tx_pause; int rx_pause; int aneg_pause; int is_aspeed; int use_ncsi; int res; int base; int new_tx_q_entries; int tx_q_entries; int new_rx_q_entries; int rx_q_entries; struct net_device* netdev; int ndev; void* txdes0_edotr_mask; void* rxdes0_edorr_mask; int reset_task; TYPE_1__* dev; } ;
struct device_node {int dummy; } ;


 void* BIT (int) ;
 int CONFIG_NET_NCSI ;
 int DEF_RX_QUEUE_ENTRIES ;
 int DEF_TX_QUEUE_ENTRIES ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int HZ ;
 int INIT_WORK (int *,int ) ;
 int IORESOURCE_MEM ;
 int IS_ENABLED (int ) ;
 int NETIF_F_GRO ;
 int NETIF_F_HW_CSUM ;
 int NETIF_F_HW_VLAN_CTAG_FILTER ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_SG ;
 int SET_NETDEV_DEV (struct net_device*,TYPE_1__*) ;
 struct net_device* alloc_etherdev (int) ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_info (TYPE_1__*,char*) ;
 int dev_name (TYPE_1__*) ;
 int free_netdev (struct net_device*) ;
 int ftgmac100_adjust_link ;
 int ftgmac100_destroy_mdio (struct net_device*) ;
 int ftgmac100_ethtool_ops ;
 int ftgmac100_initial_mac (struct ftgmac100*) ;
 int ftgmac100_ncsi_handler ;
 int ftgmac100_netdev_ops ;
 int ftgmac100_reset_task ;
 int ftgmac100_setup_clk (struct ftgmac100*) ;
 int ftgmac100_setup_mdio (struct net_device*) ;
 int ioremap (int ,int ) ;
 int iounmap (int ) ;
 int ncsi_register_dev (struct net_device*,int ) ;
 int netdev_info (struct net_device*,char*,int,int ) ;
 struct ftgmac100* netdev_priv (struct net_device*) ;
 scalar_t__ of_device_is_compatible (struct device_node*,char*) ;
 int of_get_child_by_name (struct device_node*,char*) ;
 scalar_t__ of_get_property (struct device_node*,char*,int *) ;
 struct phy_device* of_phy_get_and_connect (struct net_device*,struct device_node*,int *) ;
 int phy_attached_info (struct phy_device*) ;
 int phy_support_asym_pause (struct phy_device*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct net_device*) ;
 int register_netdev (struct net_device*) ;
 int release_resource (int ) ;
 int request_mem_region (int ,int ,int ) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int ftgmac100_probe(struct platform_device *pdev)
{
 struct resource *res;
 int irq;
 struct net_device *netdev;
 struct ftgmac100 *priv;
 struct device_node *np;
 int err = 0;

 if (!pdev)
  return -ENODEV;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res)
  return -ENXIO;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;


 netdev = alloc_etherdev(sizeof(*priv));
 if (!netdev) {
  err = -ENOMEM;
  goto err_alloc_etherdev;
 }

 SET_NETDEV_DEV(netdev, &pdev->dev);

 netdev->ethtool_ops = &ftgmac100_ethtool_ops;
 netdev->netdev_ops = &ftgmac100_netdev_ops;
 netdev->watchdog_timeo = 5 * HZ;

 platform_set_drvdata(pdev, netdev);


 priv = netdev_priv(netdev);
 priv->netdev = netdev;
 priv->dev = &pdev->dev;
 INIT_WORK(&priv->reset_task, ftgmac100_reset_task);


 priv->res = request_mem_region(res->start, resource_size(res),
           dev_name(&pdev->dev));
 if (!priv->res) {
  dev_err(&pdev->dev, "Could not reserve memory region\n");
  err = -ENOMEM;
  goto err_req_mem;
 }

 priv->base = ioremap(res->start, resource_size(res));
 if (!priv->base) {
  dev_err(&pdev->dev, "Failed to ioremap ethernet registers\n");
  err = -EIO;
  goto err_ioremap;
 }

 netdev->irq = irq;


 priv->tx_pause = 1;
 priv->rx_pause = 1;
 priv->aneg_pause = 1;


 ftgmac100_initial_mac(priv);

 np = pdev->dev.of_node;
 if (np && (of_device_is_compatible(np, "aspeed,ast2400-mac") ||
     of_device_is_compatible(np, "aspeed,ast2500-mac") ||
     of_device_is_compatible(np, "aspeed,ast2600-mac"))) {
  priv->rxdes0_edorr_mask = BIT(30);
  priv->txdes0_edotr_mask = BIT(30);
  priv->is_aspeed = 1;
 } else {
  priv->rxdes0_edorr_mask = BIT(15);
  priv->txdes0_edotr_mask = BIT(15);
 }

 if (np && of_get_property(np, "use-ncsi", ((void*)0))) {
  if (!IS_ENABLED(CONFIG_NET_NCSI)) {
   dev_err(&pdev->dev, "NCSI stack not enabled\n");
   goto err_ncsi_dev;
  }

  dev_info(&pdev->dev, "Using NCSI interface\n");
  priv->use_ncsi = 1;
  priv->ndev = ncsi_register_dev(netdev, ftgmac100_ncsi_handler);
  if (!priv->ndev)
   goto err_ncsi_dev;
 } else if (np && of_get_property(np, "phy-handle", ((void*)0))) {
  struct phy_device *phy;

  phy = of_phy_get_and_connect(priv->netdev, np,
          &ftgmac100_adjust_link);
  if (!phy) {
   dev_err(&pdev->dev, "Failed to connect to phy\n");
   goto err_setup_mdio;
  }




  phy_support_asym_pause(phy);


  phy_attached_info(phy);
 } else if (np && !of_get_child_by_name(np, "mdio")) {





  priv->use_ncsi = 0;
  err = ftgmac100_setup_mdio(netdev);
  if (err)
   goto err_setup_mdio;
 }

 if (priv->is_aspeed)
  ftgmac100_setup_clk(priv);


 priv->rx_q_entries = priv->new_rx_q_entries = DEF_RX_QUEUE_ENTRIES;
 priv->tx_q_entries = priv->new_tx_q_entries = DEF_TX_QUEUE_ENTRIES;


 netdev->hw_features = NETIF_F_RXCSUM | NETIF_F_HW_CSUM |
  NETIF_F_GRO | NETIF_F_SG | NETIF_F_HW_VLAN_CTAG_RX |
  NETIF_F_HW_VLAN_CTAG_TX;

 if (priv->use_ncsi)
  netdev->hw_features |= NETIF_F_HW_VLAN_CTAG_FILTER;


 if (np && (of_device_is_compatible(np, "aspeed,ast2400-mac")))
  netdev->hw_features &= ~NETIF_F_HW_CSUM;
 if (np && of_get_property(np, "no-hw-checksum", ((void*)0)))
  netdev->hw_features &= ~(NETIF_F_HW_CSUM | NETIF_F_RXCSUM);
 netdev->features |= netdev->hw_features;


 err = register_netdev(netdev);
 if (err) {
  dev_err(&pdev->dev, "Failed to register netdev\n");
  goto err_register_netdev;
 }

 netdev_info(netdev, "irq %d, mapped at %p\n", netdev->irq, priv->base);

 return 0;

err_ncsi_dev:
err_register_netdev:
 ftgmac100_destroy_mdio(netdev);
err_setup_mdio:
 iounmap(priv->base);
err_ioremap:
 release_resource(priv->res);
err_req_mem:
 free_netdev(netdev);
err_alloc_etherdev:
 return err;
}
