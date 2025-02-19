
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; } ;
struct fec_enet_private {int csum_flags; } ;
typedef int netdev_features_t ;


 int FLAG_RX_CSUM_ENABLED ;
 int NETIF_F_RXCSUM ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static inline void fec_enet_set_netdev_features(struct net_device *netdev,
 netdev_features_t features)
{
 struct fec_enet_private *fep = netdev_priv(netdev);
 netdev_features_t changed = features ^ netdev->features;

 netdev->features = features;


 if (changed & NETIF_F_RXCSUM) {
  if (features & NETIF_F_RXCSUM)
   fep->csum_flags |= FLAG_RX_CSUM_ENABLED;
  else
   fep->csum_flags &= ~FLAG_RX_CSUM_ENABLED;
 }
}
