
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ip_tunnel_parm {int dummy; } ;
typedef int __be32 ;
struct TYPE_2__ {int addr4; } ;


 struct ip_tunnel_parm mlxsw_sp_ipip_netdev_parms4 (struct net_device const*) ;
 TYPE_1__ mlxsw_sp_ipip_parms4_daddr (struct ip_tunnel_parm) ;

__attribute__((used)) static __be32 mlxsw_sp_ipip_netdev_daddr4(const struct net_device *ol_dev)
{

 struct ip_tunnel_parm parms4 = mlxsw_sp_ipip_netdev_parms4(ol_dev);

 return mlxsw_sp_ipip_parms4_daddr(parms4).addr4;
}
