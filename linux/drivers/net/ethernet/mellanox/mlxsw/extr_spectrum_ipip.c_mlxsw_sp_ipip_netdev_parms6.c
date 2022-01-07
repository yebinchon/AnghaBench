
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct __ip6_tnl_parm {int dummy; } ;
struct ip6_tnl {struct __ip6_tnl_parm parms; } ;


 struct ip6_tnl* netdev_priv (struct net_device const*) ;

struct __ip6_tnl_parm
mlxsw_sp_ipip_netdev_parms6(const struct net_device *ol_dev)
{
 struct ip6_tnl *tun = netdev_priv(ol_dev);

 return tun->parms;
}
