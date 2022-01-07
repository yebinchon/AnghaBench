
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int features; } ;
struct TYPE_2__ {int maybe_stop_tx; int fill_desc; } ;
struct hns_nic_priv {int enet_ver; TYPE_1__ ops; } ;
typedef int netdev_features_t ;



 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;
 int fill_tso_desc ;
 int fill_v2_desc ;
 int hns_nic_maybe_stop_tso ;
 int hns_nic_maybe_stop_tx ;
 int netdev_info (struct net_device*,char*) ;
 struct hns_nic_priv* netdev_priv (struct net_device*) ;
 int netif_set_gso_max_size (struct net_device*,int) ;

__attribute__((used)) static int hns_nic_set_features(struct net_device *netdev,
    netdev_features_t features)
{
 struct hns_nic_priv *priv = netdev_priv(netdev);

 switch (priv->enet_ver) {
 case 128:
  if (features & (NETIF_F_TSO | NETIF_F_TSO6))
   netdev_info(netdev, "enet v1 do not support tso!\n");
  break;
 default:
  if (features & (NETIF_F_TSO | NETIF_F_TSO6)) {
   priv->ops.fill_desc = fill_tso_desc;
   priv->ops.maybe_stop_tx = hns_nic_maybe_stop_tso;

   netif_set_gso_max_size(netdev, 7 * 4096);
  } else {
   priv->ops.fill_desc = fill_v2_desc;
   priv->ops.maybe_stop_tx = hns_nic_maybe_stop_tx;
  }
  break;
 }
 netdev->features = features;
 return 0;
}
