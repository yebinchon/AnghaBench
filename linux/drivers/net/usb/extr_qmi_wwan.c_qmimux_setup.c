
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; int mtu; int needs_free_netdev; int * netdev_ops; scalar_t__ addr_len; scalar_t__ hard_header_len; int type; int * header_ops; } ;


 int ARPHRD_NONE ;
 int IFF_MULTICAST ;
 int IFF_NOARP ;
 int IFF_POINTOPOINT ;
 int qmimux_netdev_ops ;

__attribute__((used)) static void qmimux_setup(struct net_device *dev)
{
 dev->header_ops = ((void*)0);
 dev->type = ARPHRD_NONE;
 dev->hard_header_len = 0;
 dev->addr_len = 0;
 dev->flags = IFF_POINTOPOINT | IFF_NOARP | IFF_MULTICAST;
 dev->netdev_ops = &qmimux_netdev_ops;
 dev->mtu = 1500;
 dev->needs_free_netdev = 1;
}
