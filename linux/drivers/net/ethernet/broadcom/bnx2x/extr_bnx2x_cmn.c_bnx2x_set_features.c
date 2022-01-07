
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int features; } ;
struct TYPE_2__ {scalar_t__ loopback_mode; } ;
struct bnx2x {scalar_t__ recovery_state; TYPE_1__ link_params; int pdev; } ;
typedef int netdev_features_t ;


 scalar_t__ BNX2X_RECOVERY_DONE ;
 scalar_t__ LOOPBACK_BMAC ;
 scalar_t__ LOOPBACK_NONE ;
 int NETIF_F_GRO ;
 int NETIF_F_LOOPBACK ;
 int bnx2x_reload_if_running (struct net_device*) ;
 struct bnx2x* netdev_priv (struct net_device*) ;
 int pci_num_vf (int ) ;

int bnx2x_set_features(struct net_device *dev, netdev_features_t features)
{
 struct bnx2x *bp = netdev_priv(dev);
 netdev_features_t changes = features ^ dev->features;
 bool bnx2x_reload = 0;
 int rc;


 if (!pci_num_vf(bp->pdev)) {
  if (features & NETIF_F_LOOPBACK) {
   if (bp->link_params.loopback_mode != LOOPBACK_BMAC) {
    bp->link_params.loopback_mode = LOOPBACK_BMAC;
    bnx2x_reload = 1;
   }
  } else {
   if (bp->link_params.loopback_mode != LOOPBACK_NONE) {
    bp->link_params.loopback_mode = LOOPBACK_NONE;
    bnx2x_reload = 1;
   }
  }
 }


 changes &= ~NETIF_F_GRO;

 if (changes)
  bnx2x_reload = 1;

 if (bnx2x_reload) {
  if (bp->recovery_state == BNX2X_RECOVERY_DONE) {
   dev->features = features;
   rc = bnx2x_reload_if_running(dev);
   return rc ? rc : 1;
  }

 }

 return 0;
}
