
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vortex_private {int mii; } ;
struct net_device {int dummy; } ;


 int mii_nway_restart (int *) ;
 struct vortex_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int vortex_nway_reset(struct net_device *dev)
{
 struct vortex_private *vp = netdev_priv(dev);

 return mii_nway_restart(&vp->mii);
}
