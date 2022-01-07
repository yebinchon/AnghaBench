
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vnet {int msg_enable; } ;
struct net_device {int dummy; } ;


 struct vnet* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 vnet_get_msglevel(struct net_device *dev)
{
 struct vnet *vp = netdev_priv(dev);

 return vp->msg_enable;
}
