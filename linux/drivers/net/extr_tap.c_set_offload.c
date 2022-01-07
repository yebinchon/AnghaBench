
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tap_queue {int tap; } ;
struct tap_dev {int tap_features; int (* update_features ) (struct tap_dev*,int) ;TYPE_1__* dev; } ;
typedef int netdev_features_t ;
struct TYPE_2__ {int features; } ;


 int ENOLINK ;
 int NETIF_F_HW_CSUM ;
 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;
 int NETIF_F_TSO_ECN ;
 int RX_OFFLOADS ;
 unsigned long TUN_F_CSUM ;
 unsigned long TUN_F_TSO4 ;
 unsigned long TUN_F_TSO6 ;
 unsigned long TUN_F_TSO_ECN ;
 struct tap_dev* rtnl_dereference (int ) ;
 int stub1 (struct tap_dev*,int) ;

__attribute__((used)) static int set_offload(struct tap_queue *q, unsigned long arg)
{
 struct tap_dev *tap;
 netdev_features_t features;
 netdev_features_t feature_mask = 0;

 tap = rtnl_dereference(q->tap);
 if (!tap)
  return -ENOLINK;

 features = tap->dev->features;

 if (arg & TUN_F_CSUM) {
  feature_mask = NETIF_F_HW_CSUM;

  if (arg & (TUN_F_TSO4 | TUN_F_TSO6)) {
   if (arg & TUN_F_TSO_ECN)
    feature_mask |= NETIF_F_TSO_ECN;
   if (arg & TUN_F_TSO4)
    feature_mask |= NETIF_F_TSO;
   if (arg & TUN_F_TSO6)
    feature_mask |= NETIF_F_TSO6;
  }
 }
 if (feature_mask & (NETIF_F_TSO | NETIF_F_TSO6))
  features |= RX_OFFLOADS;
 else
  features &= ~RX_OFFLOADS;




 tap->tap_features = feature_mask;
 if (tap->update_features)
  tap->update_features(tap, features);

 return 0;
}
