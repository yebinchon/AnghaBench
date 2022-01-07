
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; int mtu; } ;


 int CANFD_MTU ;
 int CAN_MTU ;
 int EBUSY ;
 int EINVAL ;
 int IFF_UP ;

__attribute__((used)) static int vxcan_change_mtu(struct net_device *dev, int new_mtu)
{

 if (dev->flags & IFF_UP)
  return -EBUSY;

 if (new_mtu != CAN_MTU && new_mtu != CANFD_MTU)
  return -EINVAL;

 dev->mtu = new_mtu;
 return 0;
}
