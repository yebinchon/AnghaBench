
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int features; } ;
struct TYPE_4__ {void* maybe_stop_tx; int fill_desc; int get_rxd_bnum; } ;
struct hns_nic_priv {TYPE_1__ ops; int enet_ver; struct hnae_handle* ae_handle; } ;
struct hnae_handle {TYPE_3__* dev; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int (* set_tso_stats ) (struct hnae_handle*,int) ;} ;


 scalar_t__ AE_IS_VER1 (int ) ;
 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;
 int fill_desc ;
 int fill_tso_desc ;
 int fill_v2_desc ;
 int get_rx_desc_bnum ;
 int get_v2rx_desc_bnum ;
 void* hns_nic_maybe_stop_tso ;
 void* hns_nic_maybe_stop_tx ;
 struct hns_nic_priv* netdev_priv (struct net_device*) ;
 int netif_set_gso_max_size (struct net_device*,int) ;
 int stub1 (struct hnae_handle*,int) ;

__attribute__((used)) static void hns_nic_set_priv_ops(struct net_device *netdev)
{
 struct hns_nic_priv *priv = netdev_priv(netdev);
 struct hnae_handle *h = priv->ae_handle;

 if (AE_IS_VER1(priv->enet_ver)) {
  priv->ops.fill_desc = fill_desc;
  priv->ops.get_rxd_bnum = get_rx_desc_bnum;
  priv->ops.maybe_stop_tx = hns_nic_maybe_stop_tx;
 } else {
  priv->ops.get_rxd_bnum = get_v2rx_desc_bnum;
  if ((netdev->features & NETIF_F_TSO) ||
      (netdev->features & NETIF_F_TSO6)) {
   priv->ops.fill_desc = fill_tso_desc;
   priv->ops.maybe_stop_tx = hns_nic_maybe_stop_tso;

   netif_set_gso_max_size(netdev, 7 * 4096);
  } else {
   priv->ops.fill_desc = fill_v2_desc;
   priv->ops.maybe_stop_tx = hns_nic_maybe_stop_tx;
  }



  h->dev->ops->set_tso_stats(h, 1);
 }
}
