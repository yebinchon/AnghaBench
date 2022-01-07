
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int of_node; } ;
struct net_device {int features; TYPE_2__ dev; int * ethtool_ops; int * netdev_ops; int dev_addr; } ;
struct cpsw_priv {int emac_port; int mac_addr; int msg_enable; TYPE_2__* dev; struct net_device* ndev; struct cpsw_common* cpsw; } ;
struct cpsw_platform_data {TYPE_1__* slave_data; } ;
struct cpsw_common {int dev; TYPE_4__* slaves; struct cpsw_platform_data data; } ;
struct TYPE_8__ {TYPE_3__* data; struct net_device* ndev; } ;
struct TYPE_7__ {int slave_node; } ;
struct TYPE_5__ {int mac_addr; } ;


 int CPSW_DEBUG ;
 int CPSW_MAX_QUEUES ;
 int ENOMEM ;
 int ETH_ALEN ;
 int NETIF_F_HW_VLAN_CTAG_FILTER ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int SET_NETDEV_DEV (struct net_device*,int ) ;
 int cpsw_ethtool_ops ;
 int cpsw_netdev_ops ;
 int debug_level ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,int ) ;
 struct net_device* devm_alloc_etherdev_mqs (int ,int,int ,int ) ;
 int eth_random_addr (int ) ;
 scalar_t__ is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct cpsw_priv* netdev_priv (struct net_device*) ;
 int netif_msg_init (int ,int ) ;
 int register_netdev (struct net_device*) ;

__attribute__((used)) static int cpsw_probe_dual_emac(struct cpsw_priv *priv)
{
 struct cpsw_common *cpsw = priv->cpsw;
 struct cpsw_platform_data *data = &cpsw->data;
 struct net_device *ndev;
 struct cpsw_priv *priv_sl2;
 int ret = 0;

 ndev = devm_alloc_etherdev_mqs(cpsw->dev, sizeof(struct cpsw_priv),
           CPSW_MAX_QUEUES, CPSW_MAX_QUEUES);
 if (!ndev) {
  dev_err(cpsw->dev, "cpsw: error allocating net_device\n");
  return -ENOMEM;
 }

 priv_sl2 = netdev_priv(ndev);
 priv_sl2->cpsw = cpsw;
 priv_sl2->ndev = ndev;
 priv_sl2->dev = &ndev->dev;
 priv_sl2->msg_enable = netif_msg_init(debug_level, CPSW_DEBUG);

 if (is_valid_ether_addr(data->slave_data[1].mac_addr)) {
  memcpy(priv_sl2->mac_addr, data->slave_data[1].mac_addr,
   ETH_ALEN);
  dev_info(cpsw->dev, "cpsw: Detected MACID = %pM\n",
    priv_sl2->mac_addr);
 } else {
  eth_random_addr(priv_sl2->mac_addr);
  dev_info(cpsw->dev, "cpsw: Random MACID = %pM\n",
    priv_sl2->mac_addr);
 }
 memcpy(ndev->dev_addr, priv_sl2->mac_addr, ETH_ALEN);

 priv_sl2->emac_port = 1;
 cpsw->slaves[1].ndev = ndev;
 ndev->features |= NETIF_F_HW_VLAN_CTAG_FILTER | NETIF_F_HW_VLAN_CTAG_RX;

 ndev->netdev_ops = &cpsw_netdev_ops;
 ndev->ethtool_ops = &cpsw_ethtool_ops;


 SET_NETDEV_DEV(ndev, cpsw->dev);
 ndev->dev.of_node = cpsw->slaves[1].data->slave_node;
 ret = register_netdev(ndev);
 if (ret)
  dev_err(cpsw->dev, "cpsw: error registering net device\n");

 return ret;
}
