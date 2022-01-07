
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {struct device_node* of_node; struct bcmgenet_platform_data* platform_data; } ;
struct platform_device {TYPE_3__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct net_device {int watchdog_timeo; int hw_features; int needed_headroom; int name; int * netdev_ops; int * ethtool_ops; int dev_addr; } ;
struct device_node {int dummy; } ;
struct bcmgenet_priv {void const* base; int wol_irq_disabled; int version; void const* clk; void const* clk_wol; void const* clk_eee; TYPE_2__* rx_rings; TYPE_1__* hw_params; struct net_device* dev; struct platform_device* pdev; int bcmgenet_irq_work; int rx_buf_len; int wq; void* wol_irq; int msg_enable; int lock; void* irq1; void* irq0; } ;
struct bcmgenet_platform_data {void* mac_address; int genet_version; } ;
typedef enum bcmgenet_version { ____Placeholder_bcmgenet_version } bcmgenet_version ;
struct TYPE_11__ {int rx_max_coalesced_frames; } ;
struct TYPE_10__ {int rx_queues; scalar_t__ tx_queues; } ;


 size_t DESC_INDEX ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 scalar_t__ GENET_MAX_MQ_CNT ;
 int GENET_MSG_DEFAULT ;
 int GENET_POWER_PASSIVE ;
 int HZ ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (void const*) ;
 int NETIF_F_IPV6_CSUM ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_SG ;
 int PTR_ERR (void const*) ;
 int RX_BUF_LENGTH ;
 int SET_NETDEV_DEV (struct net_device*,TYPE_3__*) ;
 struct net_device* alloc_etherdev_mqs (int,scalar_t__,scalar_t__) ;
 int bcmgenet_ethtool_ops ;
 int bcmgenet_irq_task ;
 int bcmgenet_match ;
 int bcmgenet_mii_init (struct net_device*) ;
 int bcmgenet_netdev_ops ;
 int bcmgenet_power_up (struct bcmgenet_priv*,int ) ;
 int bcmgenet_set_hw_params (struct bcmgenet_priv*) ;
 int bcmgenet_wol_isr ;
 int clk_disable_unprepare (void const*) ;
 int clk_prepare_enable (void const*) ;
 int dev_err (TYPE_3__*,char*) ;
 int dev_set_drvdata (TYPE_3__*,struct net_device*) ;
 int dev_warn (TYPE_3__*,char*) ;
 int device_set_wakeup_capable (TYPE_3__*,int) ;
 void* devm_clk_get (TYPE_3__*,char*) ;
 void const* devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_request_irq (TYPE_3__*,void*,int ,int ,int ,struct bcmgenet_priv*) ;
 int ether_addr_copy (int ,void const*) ;
 int free_netdev (struct net_device*) ;
 int init_waitqueue_head (int *) ;
 int netdev_boot_setup_check (struct net_device*) ;
 struct bcmgenet_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_msg_init (int,int ) ;
 int netif_set_real_num_rx_queues (struct net_device*,int) ;
 int netif_set_real_num_tx_queues (struct net_device*,scalar_t__) ;
 void* of_get_mac_address (struct device_node*) ;
 struct of_device_id* of_match_node (int ,struct device_node*) ;
 int of_property_read_string (struct device_node*,char*,char const**) ;
 void* platform_get_irq (struct platform_device*,int) ;
 int register_netdev (struct net_device*) ;
 int reset_umac (struct bcmgenet_priv*) ;
 int spin_lock_init (int *) ;
 int strcasecmp (char const*,char*) ;

__attribute__((used)) static int bcmgenet_probe(struct platform_device *pdev)
{
 struct bcmgenet_platform_data *pd = pdev->dev.platform_data;
 struct device_node *dn = pdev->dev.of_node;
 const struct of_device_id *of_id = ((void*)0);
 struct bcmgenet_priv *priv;
 struct net_device *dev;
 const void *macaddr;
 unsigned int i;
 int err = -EIO;
 const char *phy_mode_str;


 dev = alloc_etherdev_mqs(sizeof(*priv), GENET_MAX_MQ_CNT + 1,
     GENET_MAX_MQ_CNT + 1);
 if (!dev) {
  dev_err(&pdev->dev, "can't allocate net device\n");
  return -ENOMEM;
 }

 if (dn) {
  of_id = of_match_node(bcmgenet_match, dn);
  if (!of_id)
   return -EINVAL;
 }

 priv = netdev_priv(dev);
 priv->irq0 = platform_get_irq(pdev, 0);
 priv->irq1 = platform_get_irq(pdev, 1);
 priv->wol_irq = platform_get_irq(pdev, 2);
 if (!priv->irq0 || !priv->irq1) {
  dev_err(&pdev->dev, "can't find IRQs\n");
  err = -EINVAL;
  goto err;
 }

 if (dn) {
  macaddr = of_get_mac_address(dn);
  if (IS_ERR(macaddr)) {
   dev_err(&pdev->dev, "can't find MAC address\n");
   err = -EINVAL;
   goto err;
  }
 } else {
  macaddr = pd->mac_address;
 }

 priv->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(priv->base)) {
  err = PTR_ERR(priv->base);
  goto err;
 }

 spin_lock_init(&priv->lock);

 SET_NETDEV_DEV(dev, &pdev->dev);
 dev_set_drvdata(&pdev->dev, dev);
 ether_addr_copy(dev->dev_addr, macaddr);
 dev->watchdog_timeo = 2 * HZ;
 dev->ethtool_ops = &bcmgenet_ethtool_ops;
 dev->netdev_ops = &bcmgenet_netdev_ops;

 priv->msg_enable = netif_msg_init(-1, GENET_MSG_DEFAULT);


 dev->hw_features |= NETIF_F_SG | NETIF_F_IP_CSUM |
  NETIF_F_IPV6_CSUM | NETIF_F_RXCSUM;


 priv->wol_irq_disabled = 1;
 err = devm_request_irq(&pdev->dev, priv->wol_irq, bcmgenet_wol_isr, 0,
          dev->name, priv);
 if (!err)
  device_set_wakeup_capable(&pdev->dev, 1);




 dev->needed_headroom += 64;

 netdev_boot_setup_check(dev);

 priv->dev = dev;
 priv->pdev = pdev;
 if (of_id)
  priv->version = (enum bcmgenet_version)of_id->data;
 else
  priv->version = pd->genet_version;

 priv->clk = devm_clk_get(&priv->pdev->dev, "enet");
 if (IS_ERR(priv->clk)) {
  dev_warn(&priv->pdev->dev, "failed to get enet clock\n");
  priv->clk = ((void*)0);
 }

 clk_prepare_enable(priv->clk);

 bcmgenet_set_hw_params(priv);


 init_waitqueue_head(&priv->wq);

 priv->rx_buf_len = RX_BUF_LENGTH;
 INIT_WORK(&priv->bcmgenet_irq_work, bcmgenet_irq_task);

 priv->clk_wol = devm_clk_get(&priv->pdev->dev, "enet-wol");
 if (IS_ERR(priv->clk_wol)) {
  dev_warn(&priv->pdev->dev, "failed to get enet-wol clock\n");
  priv->clk_wol = ((void*)0);
 }

 priv->clk_eee = devm_clk_get(&priv->pdev->dev, "enet-eee");
 if (IS_ERR(priv->clk_eee)) {
  dev_warn(&priv->pdev->dev, "failed to get enet-eee clock\n");
  priv->clk_eee = ((void*)0);
 }




 if (dn && !of_property_read_string(dn, "phy-mode", &phy_mode_str) &&
     !strcasecmp(phy_mode_str, "internal"))
  bcmgenet_power_up(priv, GENET_POWER_PASSIVE);

 reset_umac(priv);

 err = bcmgenet_mii_init(dev);
 if (err)
  goto err_clk_disable;




 netif_set_real_num_tx_queues(priv->dev, priv->hw_params->tx_queues + 1);
 netif_set_real_num_rx_queues(priv->dev, priv->hw_params->rx_queues + 1);


 for (i = 0; i < priv->hw_params->rx_queues; i++)
  priv->rx_rings[i].rx_max_coalesced_frames = 1;
 priv->rx_rings[DESC_INDEX].rx_max_coalesced_frames = 1;


 netif_carrier_off(dev);


 clk_disable_unprepare(priv->clk);

 err = register_netdev(dev);
 if (err)
  goto err;

 return err;

err_clk_disable:
 clk_disable_unprepare(priv->clk);
err:
 free_netdev(dev);
 return err;
}
