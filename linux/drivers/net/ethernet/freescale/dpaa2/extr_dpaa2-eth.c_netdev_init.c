
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct TYPE_3__ {struct device* parent; } ;
struct net_device {int features; int hw_features; int priv_flags; int max_mtu; int * ethtool_ops; int * netdev_ops; TYPE_1__ dev; } ;
struct TYPE_4__ {int options; } ;
struct dpaa2_eth_priv {int mc_token; int mc_io; TYPE_2__ dpni_attrs; } ;
struct device {int dummy; } ;


 int DPAA2_ETH_MAX_MTU ;
 int DPAA2_ETH_MFL ;
 int DPNI_OPT_NO_MAC_FILTER ;
 int ETH_ALEN ;
 int IFF_LIVE_ADDR_CHANGE ;
 int IFF_UNICAST_FLT ;
 int NETIF_F_HIGHDMA ;
 int NETIF_F_IPV6_CSUM ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_LLTX ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_SG ;
 int dev_err (struct device*,char*) ;
 int dpaa2_eth_ops ;
 int dpaa2_eth_queue_count (struct dpaa2_eth_priv*) ;
 int dpaa2_ethtool_ops ;
 int dpni_add_mac_addr (int ,int ,int ,int *) ;
 int dpni_set_max_frame_length (int ,int ,int ,int ) ;
 int eth_broadcast_addr (int *) ;
 struct dpaa2_eth_priv* netdev_priv (struct net_device*) ;
 int netif_set_real_num_rx_queues (struct net_device*,int ) ;
 int netif_set_real_num_tx_queues (struct net_device*,int ) ;
 int set_mac_addr (struct dpaa2_eth_priv*) ;

__attribute__((used)) static int netdev_init(struct net_device *net_dev)
{
 struct device *dev = net_dev->dev.parent;
 struct dpaa2_eth_priv *priv = netdev_priv(net_dev);
 u32 options = priv->dpni_attrs.options;
 u64 supported = 0, not_supported = 0;
 u8 bcast_addr[ETH_ALEN];
 u8 num_queues;
 int err;

 net_dev->netdev_ops = &dpaa2_eth_ops;
 net_dev->ethtool_ops = &dpaa2_ethtool_ops;

 err = set_mac_addr(priv);
 if (err)
  return err;


 eth_broadcast_addr(bcast_addr);
 err = dpni_add_mac_addr(priv->mc_io, 0, priv->mc_token, bcast_addr);
 if (err) {
  dev_err(dev, "dpni_add_mac_addr() failed\n");
  return err;
 }


 net_dev->max_mtu = DPAA2_ETH_MAX_MTU;
 err = dpni_set_max_frame_length(priv->mc_io, 0, priv->mc_token,
     DPAA2_ETH_MFL);
 if (err) {
  dev_err(dev, "dpni_set_max_frame_length() failed\n");
  return err;
 }


 num_queues = dpaa2_eth_queue_count(priv);
 err = netif_set_real_num_tx_queues(net_dev, num_queues);
 if (err) {
  dev_err(dev, "netif_set_real_num_tx_queues() failed\n");
  return err;
 }
 err = netif_set_real_num_rx_queues(net_dev, num_queues);
 if (err) {
  dev_err(dev, "netif_set_real_num_rx_queues() failed\n");
  return err;
 }


 supported |= IFF_LIVE_ADDR_CHANGE;

 if (options & DPNI_OPT_NO_MAC_FILTER)
  not_supported |= IFF_UNICAST_FLT;
 else
  supported |= IFF_UNICAST_FLT;

 net_dev->priv_flags |= supported;
 net_dev->priv_flags &= ~not_supported;


 net_dev->features = NETIF_F_RXCSUM |
       NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM |
       NETIF_F_SG | NETIF_F_HIGHDMA |
       NETIF_F_LLTX;
 net_dev->hw_features = net_dev->features;

 return 0;
}
