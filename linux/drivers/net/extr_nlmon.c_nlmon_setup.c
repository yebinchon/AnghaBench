
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlmsghdr {int dummy; } ;
struct net_device {int needs_free_netdev; int features; int min_mtu; int mtu; int flags; int * ethtool_ops; int * netdev_ops; int priv_flags; int type; } ;


 int ARPHRD_NETLINK ;
 int IFF_NOARP ;
 int IFF_NO_QUEUE ;
 int NETIF_F_FRAGLIST ;
 int NETIF_F_HIGHDMA ;
 int NETIF_F_LLTX ;
 int NETIF_F_SG ;
 int NLMSG_GOODSIZE ;
 int nlmon_ethtool_ops ;
 int nlmon_ops ;

__attribute__((used)) static void nlmon_setup(struct net_device *dev)
{
 dev->type = ARPHRD_NETLINK;
 dev->priv_flags |= IFF_NO_QUEUE;

 dev->netdev_ops = &nlmon_ops;
 dev->ethtool_ops = &nlmon_ethtool_ops;
 dev->needs_free_netdev = 1;

 dev->features = NETIF_F_SG | NETIF_F_FRAGLIST |
   NETIF_F_HIGHDMA | NETIF_F_LLTX;
 dev->flags = IFF_NOARP;





 dev->mtu = NLMSG_GOODSIZE;
 dev->min_mtu = sizeof(struct nlmsghdr);
}
