
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * netdev_ops; int flags; } ;


 int IFF_ECHO ;
 int m_can_netdev_ops ;
 int register_candev (struct net_device*) ;

__attribute__((used)) static int register_m_can_dev(struct net_device *dev)
{
 dev->flags |= IFF_ECHO;
 dev->netdev_ops = &m_can_netdev_ops;

 return register_candev(dev);
}
