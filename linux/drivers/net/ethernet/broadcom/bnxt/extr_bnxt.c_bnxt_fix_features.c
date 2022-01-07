
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int features; } ;
struct TYPE_2__ {scalar_t__ vlan; } ;
struct bnxt {int flags; TYPE_1__ vf; } ;
typedef int netdev_features_t ;


 int BNXT_FLAG_NO_AGG_RINGS ;
 scalar_t__ BNXT_VF (struct bnxt*) ;
 int NETIF_F_GRO ;
 int NETIF_F_GRO_HW ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_HW_VLAN_STAG_RX ;
 int NETIF_F_LRO ;
 int NETIF_F_NTUPLE ;
 int bnxt_rfs_capable (struct bnxt*) ;
 struct bnxt* netdev_priv (struct net_device*) ;

__attribute__((used)) static netdev_features_t bnxt_fix_features(struct net_device *dev,
        netdev_features_t features)
{
 struct bnxt *bp = netdev_priv(dev);

 if ((features & NETIF_F_NTUPLE) && !bnxt_rfs_capable(bp))
  features &= ~NETIF_F_NTUPLE;

 if (bp->flags & BNXT_FLAG_NO_AGG_RINGS)
  features &= ~(NETIF_F_LRO | NETIF_F_GRO_HW);

 if (!(features & NETIF_F_GRO))
  features &= ~NETIF_F_GRO_HW;

 if (features & NETIF_F_GRO_HW)
  features &= ~NETIF_F_LRO;




 if ((features & (NETIF_F_HW_VLAN_CTAG_RX | NETIF_F_HW_VLAN_STAG_RX)) !=
     (NETIF_F_HW_VLAN_CTAG_RX | NETIF_F_HW_VLAN_STAG_RX)) {
  if (dev->features & NETIF_F_HW_VLAN_CTAG_RX)
   features &= ~(NETIF_F_HW_VLAN_CTAG_RX |
          NETIF_F_HW_VLAN_STAG_RX);
  else
   features |= NETIF_F_HW_VLAN_CTAG_RX |
        NETIF_F_HW_VLAN_STAG_RX;
 }
 return features;
}
