
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tun_struct {TYPE_1__* dev; int set_features; } ;
typedef int netdev_features_t ;
struct TYPE_2__ {int wanted_features; } ;


 int EINVAL ;
 int NETIF_F_HW_CSUM ;
 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;
 int NETIF_F_TSO_ECN ;
 unsigned long TUN_F_CSUM ;
 unsigned long TUN_F_TSO4 ;
 unsigned long TUN_F_TSO6 ;
 unsigned long TUN_F_TSO_ECN ;
 unsigned long TUN_F_UFO ;
 int TUN_USER_FEATURES ;
 int netdev_update_features (TYPE_1__*) ;

__attribute__((used)) static int set_offload(struct tun_struct *tun, unsigned long arg)
{
 netdev_features_t features = 0;

 if (arg & TUN_F_CSUM) {
  features |= NETIF_F_HW_CSUM;
  arg &= ~TUN_F_CSUM;

  if (arg & (TUN_F_TSO4|TUN_F_TSO6)) {
   if (arg & TUN_F_TSO_ECN) {
    features |= NETIF_F_TSO_ECN;
    arg &= ~TUN_F_TSO_ECN;
   }
   if (arg & TUN_F_TSO4)
    features |= NETIF_F_TSO;
   if (arg & TUN_F_TSO6)
    features |= NETIF_F_TSO6;
   arg &= ~(TUN_F_TSO4|TUN_F_TSO6);
  }

  arg &= ~TUN_F_UFO;
 }



 if (arg)
  return -EINVAL;

 tun->set_features = features;
 tun->dev->wanted_features &= ~TUN_USER_FEATURES;
 tun->dev->wanted_features |= features;
 netdev_update_features(tun->dev);

 return 0;
}
