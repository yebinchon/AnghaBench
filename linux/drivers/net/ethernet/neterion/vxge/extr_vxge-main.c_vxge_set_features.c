
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vxgedev {TYPE_2__* devh; } ;
struct net_device {int features; } ;
typedef int netdev_features_t ;
struct TYPE_3__ {int rth_en; } ;
struct TYPE_4__ {TYPE_1__ config; } ;


 int EIO ;
 int NETIF_F_RXHASH ;
 scalar_t__ VXGE_HW_OK ;
 struct vxgedev* netdev_priv (struct net_device*) ;
 scalar_t__ vxge_reset_all_vpaths (struct vxgedev*) ;

__attribute__((used)) static int vxge_set_features(struct net_device *dev, netdev_features_t features)
{
 struct vxgedev *vdev = netdev_priv(dev);
 netdev_features_t changed = dev->features ^ features;

 if (!(changed & NETIF_F_RXHASH))
  return 0;



 vdev->devh->config.rth_en = !!(features & NETIF_F_RXHASH);
 if (vxge_reset_all_vpaths(vdev) != VXGE_HW_OK) {
  dev->features = features ^ NETIF_F_RXHASH;
  vdev->devh->config.rth_en = !!(dev->features & NETIF_F_RXHASH);
  return -EIO;
 }

 return 0;
}
