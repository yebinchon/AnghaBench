
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
struct TYPE_3__ {scalar_t__ ttl; int tos; } ;
struct TYPE_4__ {int i_flags; int o_flags; TYPE_1__ iph; } ;
struct ip_tunnel {TYPE_2__ parms; } ;
typedef enum mlxsw_sp_l3proto { ____Placeholder_mlxsw_sp_l3proto } mlxsw_sp_l3proto ;
typedef int __be16 ;


 int MLXSW_SP_L3_PROTO_IPV4 ;
 int TUNNEL_KEY ;
 scalar_t__ mlxsw_sp_ipip_tunnel_complete (int ,struct net_device const*) ;
 struct ip_tunnel* netdev_priv (struct net_device const*) ;

__attribute__((used)) static bool mlxsw_sp_ipip_can_offload_gre4(const struct mlxsw_sp *mlxsw_sp,
        const struct net_device *ol_dev,
        enum mlxsw_sp_l3proto ol_proto)
{
 struct ip_tunnel *tunnel = netdev_priv(ol_dev);
 __be16 okflags = TUNNEL_KEY;
 bool inherit_ttl = tunnel->parms.iph.ttl == 0;
 bool inherit_tos = tunnel->parms.iph.tos & 0x1;

 return (tunnel->parms.i_flags & ~okflags) == 0 &&
        (tunnel->parms.o_flags & ~okflags) == 0 &&
        inherit_ttl && inherit_tos &&
        mlxsw_sp_ipip_tunnel_complete(MLXSW_SP_L3_PROTO_IPV4, ol_dev);
}
