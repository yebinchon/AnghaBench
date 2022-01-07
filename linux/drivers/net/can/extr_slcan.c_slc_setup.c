
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int needs_free_netdev; int tx_queue_len; int features; int flags; int type; int mtu; scalar_t__ addr_len; scalar_t__ hard_header_len; int priv_destructor; int * netdev_ops; } ;


 int ARPHRD_CAN ;
 int CAN_MTU ;
 int IFF_NOARP ;
 int NETIF_F_HW_CSUM ;
 int slc_free_netdev ;
 int slc_netdev_ops ;

__attribute__((used)) static void slc_setup(struct net_device *dev)
{
 dev->netdev_ops = &slc_netdev_ops;
 dev->needs_free_netdev = 1;
 dev->priv_destructor = slc_free_netdev;

 dev->hard_header_len = 0;
 dev->addr_len = 0;
 dev->tx_queue_len = 10;

 dev->mtu = CAN_MTU;
 dev->type = ARPHRD_CAN;


 dev->flags = IFF_NOARP;
 dev->features = NETIF_F_HW_CSUM;
}
