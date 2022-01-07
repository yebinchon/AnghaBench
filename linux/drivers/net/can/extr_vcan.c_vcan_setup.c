
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int needs_free_netdev; int * netdev_ops; int flags; int ml_priv; scalar_t__ tx_queue_len; scalar_t__ addr_len; scalar_t__ hard_header_len; int mtu; int type; } ;


 int ARPHRD_CAN ;
 int CANFD_MTU ;
 int IFF_ECHO ;
 int IFF_NOARP ;
 scalar_t__ echo ;
 int netdev_priv (struct net_device*) ;
 int vcan_netdev_ops ;

__attribute__((used)) static void vcan_setup(struct net_device *dev)
{
 dev->type = ARPHRD_CAN;
 dev->mtu = CANFD_MTU;
 dev->hard_header_len = 0;
 dev->addr_len = 0;
 dev->tx_queue_len = 0;
 dev->flags = IFF_NOARP;
 dev->ml_priv = netdev_priv(dev);


 if (echo)
  dev->flags |= IFF_ECHO;

 dev->netdev_ops = &vcan_netdev_ops;
 dev->needs_free_netdev = 1;
}
