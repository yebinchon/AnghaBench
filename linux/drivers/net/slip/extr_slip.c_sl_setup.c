
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int needs_free_netdev; int tx_queue_len; int min_mtu; int max_mtu; int flags; scalar_t__ addr_len; scalar_t__ hard_header_len; int priv_destructor; int * netdev_ops; } ;


 int IFF_MULTICAST ;
 int IFF_NOARP ;
 int IFF_POINTOPOINT ;
 int sl_free_netdev ;
 int sl_netdev_ops ;

__attribute__((used)) static void sl_setup(struct net_device *dev)
{
 dev->netdev_ops = &sl_netdev_ops;
 dev->needs_free_netdev = 1;
 dev->priv_destructor = sl_free_netdev;

 dev->hard_header_len = 0;
 dev->addr_len = 0;
 dev->tx_queue_len = 10;


 dev->min_mtu = 68;
 dev->max_mtu = 65534;


 dev->flags = IFF_NOARP|IFF_POINTOPOINT|IFF_MULTICAST;
}
