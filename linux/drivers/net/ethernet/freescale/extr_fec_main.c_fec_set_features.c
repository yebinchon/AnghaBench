
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; } ;
struct fec_enet_private {int napi; } ;
typedef int netdev_features_t ;


 int NETIF_F_RXCSUM ;
 int fec_enet_set_netdev_features (struct net_device*,int) ;
 int fec_restart (struct net_device*) ;
 int fec_stop (struct net_device*) ;
 int napi_disable (int *) ;
 int napi_enable (int *) ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int netif_tx_lock_bh (struct net_device*) ;
 int netif_tx_unlock_bh (struct net_device*) ;
 int netif_tx_wake_all_queues (struct net_device*) ;

__attribute__((used)) static int fec_set_features(struct net_device *netdev,
 netdev_features_t features)
{
 struct fec_enet_private *fep = netdev_priv(netdev);
 netdev_features_t changed = features ^ netdev->features;

 if (netif_running(netdev) && changed & NETIF_F_RXCSUM) {
  napi_disable(&fep->napi);
  netif_tx_lock_bh(netdev);
  fec_stop(netdev);
  fec_enet_set_netdev_features(netdev, features);
  fec_restart(netdev);
  netif_tx_wake_all_queues(netdev);
  netif_tx_unlock_bh(netdev);
  napi_enable(&fep->napi);
 } else {
  fec_enet_set_netdev_features(netdev, features);
 }

 return 0;
}
