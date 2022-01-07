
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; int hw_features; } ;
struct bnxt {int flags; struct net_device* dev; } ;


 int BNXT_FLAG_RFS ;
 int NETIF_F_NTUPLE ;
 scalar_t__ bnxt_rfs_capable (struct bnxt*) ;
 scalar_t__ bnxt_rfs_supported (struct bnxt*) ;

__attribute__((used)) static void bnxt_set_dflt_rfs(struct bnxt *bp)
{
 struct net_device *dev = bp->dev;

 dev->hw_features &= ~NETIF_F_NTUPLE;
 dev->features &= ~NETIF_F_NTUPLE;
 bp->flags &= ~BNXT_FLAG_RFS;
 if (bnxt_rfs_supported(bp)) {
  dev->hw_features |= NETIF_F_NTUPLE;
  if (bnxt_rfs_capable(bp)) {
   bp->flags |= BNXT_FLAG_RFS;
   dev->features |= NETIF_F_NTUPLE;
  }
 }
}
