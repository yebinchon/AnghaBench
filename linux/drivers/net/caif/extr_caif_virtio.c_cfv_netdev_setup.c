
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int tx_queue_len; int flags; int needs_free_netdev; int mtu; int type; int * netdev_ops; } ;


 int ARPHRD_CAIF ;
 int CFV_DEF_MTU_SIZE ;
 int IFF_NOARP ;
 int IFF_POINTOPOINT ;
 int cfv_netdev_ops ;

__attribute__((used)) static void cfv_netdev_setup(struct net_device *netdev)
{
 netdev->netdev_ops = &cfv_netdev_ops;
 netdev->type = ARPHRD_CAIF;
 netdev->tx_queue_len = 100;
 netdev->flags = IFF_POINTOPOINT | IFF_NOARP;
 netdev->mtu = CFV_DEF_MTU_SIZE;
 netdev->needs_free_netdev = 1;
}
