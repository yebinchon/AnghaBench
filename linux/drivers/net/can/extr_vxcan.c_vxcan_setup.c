
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxcan_priv {int dummy; } ;
struct net_device {int flags; int needs_free_netdev; scalar_t__ ml_priv; int * netdev_ops; scalar_t__ tx_queue_len; scalar_t__ addr_len; scalar_t__ hard_header_len; int mtu; int type; } ;


 scalar_t__ ALIGN (int,int ) ;
 int ARPHRD_CAN ;
 int CANFD_MTU ;
 int IFF_ECHO ;
 int IFF_NOARP ;
 int NETDEV_ALIGN ;
 scalar_t__ netdev_priv (struct net_device*) ;
 int vxcan_netdev_ops ;

__attribute__((used)) static void vxcan_setup(struct net_device *dev)
{
 dev->type = ARPHRD_CAN;
 dev->mtu = CANFD_MTU;
 dev->hard_header_len = 0;
 dev->addr_len = 0;
 dev->tx_queue_len = 0;
 dev->flags = (IFF_NOARP|IFF_ECHO);
 dev->netdev_ops = &vxcan_netdev_ops;
 dev->needs_free_netdev = 1;
 dev->ml_priv = netdev_priv(dev) + ALIGN(sizeof(struct vxcan_priv), NETDEV_ALIGN);
}
