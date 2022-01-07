
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int link; } ;
struct ip_tunnel {TYPE_1__ parms; } ;


 struct net_device* __dev_get_by_index (struct net*,int ) ;
 struct net* dev_net (struct net_device const*) ;
 struct ip_tunnel* netdev_priv (struct net_device const*) ;

__attribute__((used)) static struct net_device *
__mlxsw_sp_ipip_netdev_ul_dev_get(const struct net_device *ol_dev)
{
 struct ip_tunnel *tun = netdev_priv(ol_dev);
 struct net *net = dev_net(ol_dev);

 return __dev_get_by_index(net, tun->parms.link);
}
