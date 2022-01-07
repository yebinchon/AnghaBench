
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ip_tunnel_parm {int dummy; } ;
struct ip_tunnel {struct ip_tunnel_parm parms; } ;


 struct ip_tunnel* netdev_priv (struct net_device const*) ;

struct ip_tunnel_parm
mlxsw_sp_ipip_netdev_parms4(const struct net_device *ol_dev)
{
 struct ip_tunnel *tun = netdev_priv(ol_dev);

 return tun->parms;
}
