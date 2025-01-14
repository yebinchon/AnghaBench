
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int full_duplex; } ;
struct vortex_private {TYPE_1__ mii; int full_duplex; } ;
struct net_device {int dummy; } ;


 scalar_t__ mii_check_media (TYPE_1__*,unsigned int,unsigned int) ;
 struct vortex_private* netdev_priv (struct net_device*) ;
 int vortex_debug ;
 int vortex_set_duplex (struct net_device*) ;

__attribute__((used)) static void vortex_check_media(struct net_device *dev, unsigned int init)
{
 struct vortex_private *vp = netdev_priv(dev);
 unsigned int ok_to_print = 0;

 if (vortex_debug > 3)
  ok_to_print = 1;

 if (mii_check_media(&vp->mii, ok_to_print, init)) {
  vp->full_duplex = vp->mii.full_duplex;
  vortex_set_duplex(dev);
 } else if (init) {
  vortex_set_duplex(dev);
 }
}
