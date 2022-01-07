
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; int mtu; } ;
struct bnx2x {int disable_tpa; int pdev; } ;
typedef int netdev_features_t ;


 int NETIF_F_GRO ;
 int NETIF_F_GRO_HW ;
 int NETIF_F_LOOPBACK ;
 int NETIF_F_LRO ;
 int NETIF_F_RXCSUM ;
 int bnx2x_mtu_allows_gro (int ) ;
 struct bnx2x* netdev_priv (struct net_device*) ;
 scalar_t__ pci_num_vf (int ) ;

netdev_features_t bnx2x_fix_features(struct net_device *dev,
         netdev_features_t features)
{
 struct bnx2x *bp = netdev_priv(dev);

 if (pci_num_vf(bp->pdev)) {
  netdev_features_t changed = dev->features ^ features;




  if (!(features & NETIF_F_RXCSUM) && !bp->disable_tpa) {
   features &= ~NETIF_F_RXCSUM;
   features |= dev->features & NETIF_F_RXCSUM;
  }

  if (changed & NETIF_F_LOOPBACK) {
   features &= ~NETIF_F_LOOPBACK;
   features |= dev->features & NETIF_F_LOOPBACK;
  }
 }


 if (!(features & NETIF_F_RXCSUM))
  features &= ~NETIF_F_LRO;

 if (!(features & NETIF_F_GRO) || !bnx2x_mtu_allows_gro(dev->mtu))
  features &= ~NETIF_F_GRO_HW;
 if (features & NETIF_F_GRO_HW)
  features &= ~NETIF_F_LRO;

 return features;
}
