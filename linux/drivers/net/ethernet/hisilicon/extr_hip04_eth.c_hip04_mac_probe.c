
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {struct device_node* of_node; } ;
struct platform_device {int name; struct device dev; } ;
struct of_phandle_args {int* args; int np; } ;
struct net_device {int irq; int dev_addr; int priv_flags; int watchdog_timeo; int * ethtool_ops; int * netdev_ops; } ;
struct TYPE_2__ {int function; } ;
struct hip04_priv {int port; int chan; int group; int tx_coalesce_frames; int tx_coalesce_usecs; scalar_t__ phy_mode; scalar_t__ phy_node; int napi; int tx_timeout_task; int phy; void* map; TYPE_1__ tx_coalesce_timer; void* sysctrl_base; void* base; struct net_device* ndev; struct device* dev; } ;
struct device_node {int dummy; } ;


 int CLOCK_MONOTONIC ;
 int DUPLEX_FULL ;
 int EINVAL ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int HRTIMER_MODE_REL ;
 int IFF_UNICAST_FLT ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (void*) ;
 int NAPI_POLL_WEIGHT ;
 scalar_t__ PHY_INTERFACE_MODE_MII ;
 int PTR_ERR (void*) ;
 int RX_DESC_NUM ;
 int SET_NETDEV_DEV (struct net_device*,struct device*) ;
 int SPEED_100 ;
 int TX_DESC_NUM ;
 int TX_TIMEOUT ;
 struct net_device* alloc_etherdev (int) ;
 int dev_warn (struct device*,char*) ;
 void* devm_platform_ioremap_resource (struct platform_device*,int) ;
 int devm_request_irq (struct device*,int,int ,int ,int ,struct net_device*) ;
 int eth_random_addr (int ) ;
 int free_netdev (struct net_device*) ;
 int hip04_adjust_link ;
 int hip04_alloc_ring (struct net_device*,struct device*) ;
 int hip04_config_fifo (struct hip04_priv*) ;
 int hip04_config_port (struct net_device*,int ,int ) ;
 int hip04_ethtool_ops ;
 int hip04_free_ring (struct net_device*,struct device*) ;
 int hip04_mac_interrupt ;
 int hip04_netdev_ops ;
 int hip04_reset_dreq (struct hip04_priv*) ;
 int hip04_reset_ppe (struct hip04_priv*) ;
 int hip04_rx_poll ;
 int hip04_tx_timeout_task ;
 int hip04_update_mac_address (struct net_device*) ;
 int hrtimer_init (TYPE_1__*,int ,int ) ;
 int netdev_err (struct net_device*,char*) ;
 struct hip04_priv* netdev_priv (struct net_device*) ;
 int netif_napi_add (struct net_device*,int *,int ,int ) ;
 scalar_t__ of_get_phy_mode (struct device_node*) ;
 int of_node_put (scalar_t__) ;
 scalar_t__ of_parse_phandle (struct device_node*,char*,int ) ;
 int of_parse_phandle_with_fixed_args (struct device_node*,char*,int,int ,struct of_phandle_args*) ;
 int of_phy_connect (struct net_device*,scalar_t__,int *,int ,scalar_t__) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct net_device*) ;
 int register_netdev (struct net_device*) ;
 void* syscon_node_to_regmap (int ) ;
 int tx_done ;

__attribute__((used)) static int hip04_mac_probe(struct platform_device *pdev)
{
 struct device *d = &pdev->dev;
 struct device_node *node = d->of_node;
 struct of_phandle_args arg;
 struct net_device *ndev;
 struct hip04_priv *priv;
 int irq;
 int ret;

 ndev = alloc_etherdev(sizeof(struct hip04_priv));
 if (!ndev)
  return -ENOMEM;

 priv = netdev_priv(ndev);
 priv->dev = d;
 priv->ndev = ndev;
 platform_set_drvdata(pdev, ndev);
 SET_NETDEV_DEV(ndev, &pdev->dev);

 priv->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(priv->base)) {
  ret = PTR_ERR(priv->base);
  goto init_fail;
 }
 ret = of_parse_phandle_with_fixed_args(node, "port-handle", 3, 0, &arg);
 if (ret < 0) {
  dev_warn(d, "no port-handle\n");
  goto init_fail;
 }

 priv->port = arg.args[0];
 priv->chan = arg.args[1] * RX_DESC_NUM;
 priv->group = arg.args[2];

 hrtimer_init(&priv->tx_coalesce_timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);







 priv->tx_coalesce_frames = TX_DESC_NUM * 3 / 4;
 priv->tx_coalesce_usecs = 200;
 priv->tx_coalesce_timer.function = tx_done;

 priv->map = syscon_node_to_regmap(arg.np);
 if (IS_ERR(priv->map)) {
  dev_warn(d, "no syscon hisilicon,hip04-ppe\n");
  ret = PTR_ERR(priv->map);
  goto init_fail;
 }

 priv->phy_mode = of_get_phy_mode(node);
 if (priv->phy_mode < 0) {
  dev_warn(d, "not find phy-mode\n");
  ret = -EINVAL;
  goto init_fail;
 }

 irq = platform_get_irq(pdev, 0);
 if (irq <= 0) {
  ret = -EINVAL;
  goto init_fail;
 }

 ret = devm_request_irq(d, irq, hip04_mac_interrupt,
          0, pdev->name, ndev);
 if (ret) {
  netdev_err(ndev, "devm_request_irq failed\n");
  goto init_fail;
 }

 priv->phy_node = of_parse_phandle(node, "phy-handle", 0);
 if (priv->phy_node) {
  priv->phy = of_phy_connect(ndev, priv->phy_node,
        &hip04_adjust_link,
        0, priv->phy_mode);
  if (!priv->phy) {
   ret = -EPROBE_DEFER;
   goto init_fail;
  }
 }

 INIT_WORK(&priv->tx_timeout_task, hip04_tx_timeout_task);

 ndev->netdev_ops = &hip04_netdev_ops;
 ndev->ethtool_ops = &hip04_ethtool_ops;
 ndev->watchdog_timeo = TX_TIMEOUT;
 ndev->priv_flags |= IFF_UNICAST_FLT;
 ndev->irq = irq;
 netif_napi_add(ndev, &priv->napi, hip04_rx_poll, NAPI_POLL_WEIGHT);

 hip04_reset_dreq(priv);
 hip04_reset_ppe(priv);
 if (priv->phy_mode == PHY_INTERFACE_MODE_MII)
  hip04_config_port(ndev, SPEED_100, DUPLEX_FULL);

 hip04_config_fifo(priv);
 eth_random_addr(ndev->dev_addr);
 hip04_update_mac_address(ndev);

 ret = hip04_alloc_ring(ndev, d);
 if (ret) {
  netdev_err(ndev, "alloc ring fail\n");
  goto alloc_fail;
 }

 ret = register_netdev(ndev);
 if (ret)
  goto alloc_fail;

 return 0;

alloc_fail:
 hip04_free_ring(ndev, d);
init_fail:
 of_node_put(priv->phy_node);
 free_netdev(ndev);
 return ret;
}
