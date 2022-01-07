
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct nixge_priv {scalar_t__ tx_irq; scalar_t__ rx_irq; scalar_t__ mii_bus; struct net_device* ndev; struct device_node* phy_node; scalar_t__ phy_mode; int coalesce_count_tx; int coalesce_count_rx; int napi; TYPE_1__* dev; } ;
struct net_device {int min_mtu; int dev_addr; int max_mtu; int * ethtool_ops; int * netdev_ops; int features; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int NAPI_POLL_WEIGHT ;
 int NETIF_F_SG ;
 int NIXGE_JUMBO_MTU ;
 int SET_NETDEV_DEV (struct net_device*,TYPE_1__*) ;
 int XAXIDMA_DFT_RX_THRESHOLD ;
 int XAXIDMA_DFT_TX_THRESHOLD ;
 int __nixge_hw_set_mac_address (struct net_device*) ;
 struct net_device* alloc_etherdev (int) ;
 int eth_hw_addr_random (struct net_device*) ;
 int ether_addr_copy (int ,int const*) ;
 int free_netdev (struct net_device*) ;
 scalar_t__ is_valid_ether_addr (int const*) ;
 int kfree (int const*) ;
 int mdiobus_unregister (scalar_t__) ;
 int netdev_err (struct net_device*,char*,...) ;
 struct nixge_priv* netdev_priv (struct net_device*) ;
 int netif_napi_add (struct net_device*,int *,int ,int ) ;
 int nixge_ethtool_ops ;
 int * nixge_get_nvmem_address (TYPE_1__*) ;
 int nixge_mdio_setup (struct nixge_priv*,struct device_node*) ;
 int nixge_netdev_ops ;
 int nixge_of_get_resources (struct platform_device*) ;
 int nixge_poll ;
 struct device_node* of_get_child_by_name (int ,char*) ;
 scalar_t__ of_get_phy_mode (int ) ;
 struct device_node* of_node_get (int ) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (int ,char*,int ) ;
 int of_phy_deregister_fixed_link (int ) ;
 scalar_t__ of_phy_is_fixed_link (int ) ;
 int of_phy_register_fixed_link (int ) ;
 void* platform_get_irq_byname (struct platform_device*,char*) ;
 int platform_set_drvdata (struct platform_device*,struct net_device*) ;
 int register_netdev (struct net_device*) ;

__attribute__((used)) static int nixge_probe(struct platform_device *pdev)
{
 struct device_node *mn, *phy_node;
 struct nixge_priv *priv;
 struct net_device *ndev;
 const u8 *mac_addr;
 int err;

 ndev = alloc_etherdev(sizeof(*priv));
 if (!ndev)
  return -ENOMEM;

 platform_set_drvdata(pdev, ndev);
 SET_NETDEV_DEV(ndev, &pdev->dev);

 ndev->features = NETIF_F_SG;
 ndev->netdev_ops = &nixge_netdev_ops;
 ndev->ethtool_ops = &nixge_ethtool_ops;


 ndev->min_mtu = 64;
 ndev->max_mtu = NIXGE_JUMBO_MTU;

 mac_addr = nixge_get_nvmem_address(&pdev->dev);
 if (mac_addr && is_valid_ether_addr(mac_addr)) {
  ether_addr_copy(ndev->dev_addr, mac_addr);
  kfree(mac_addr);
 } else {
  eth_hw_addr_random(ndev);
 }

 priv = netdev_priv(ndev);
 priv->ndev = ndev;
 priv->dev = &pdev->dev;

 netif_napi_add(ndev, &priv->napi, nixge_poll, NAPI_POLL_WEIGHT);
 err = nixge_of_get_resources(pdev);
 if (err)
  return err;
 __nixge_hw_set_mac_address(ndev);

 priv->tx_irq = platform_get_irq_byname(pdev, "tx");
 if (priv->tx_irq < 0) {
  netdev_err(ndev, "could not find 'tx' irq");
  return priv->tx_irq;
 }

 priv->rx_irq = platform_get_irq_byname(pdev, "rx");
 if (priv->rx_irq < 0) {
  netdev_err(ndev, "could not find 'rx' irq");
  return priv->rx_irq;
 }

 priv->coalesce_count_rx = XAXIDMA_DFT_RX_THRESHOLD;
 priv->coalesce_count_tx = XAXIDMA_DFT_TX_THRESHOLD;

 mn = of_get_child_by_name(pdev->dev.of_node, "mdio");
 if (mn) {
  err = nixge_mdio_setup(priv, mn);
  of_node_put(mn);
  if (err) {
   netdev_err(ndev, "error registering mdio bus");
   goto free_netdev;
  }
 }

 priv->phy_mode = of_get_phy_mode(pdev->dev.of_node);
 if ((int)priv->phy_mode < 0) {
  netdev_err(ndev, "not find \"phy-mode\" property\n");
  err = -EINVAL;
  goto unregister_mdio;
 }

 phy_node = of_parse_phandle(pdev->dev.of_node, "phy-handle", 0);
 if (!phy_node && of_phy_is_fixed_link(pdev->dev.of_node)) {
  err = of_phy_register_fixed_link(pdev->dev.of_node);
  if (err < 0) {
   netdev_err(ndev, "broken fixed-link specification\n");
   goto unregister_mdio;
  }
  phy_node = of_node_get(pdev->dev.of_node);
 }
 priv->phy_node = phy_node;

 err = register_netdev(priv->ndev);
 if (err) {
  netdev_err(ndev, "register_netdev() error (%i)\n", err);
  goto free_phy;
 }

 return 0;

free_phy:
 if (of_phy_is_fixed_link(pdev->dev.of_node))
  of_phy_deregister_fixed_link(pdev->dev.of_node);
 of_node_put(phy_node);

unregister_mdio:
 if (priv->mii_bus)
  mdiobus_unregister(priv->mii_bus);

free_netdev:
 free_netdev(ndev);

 return err;
}
