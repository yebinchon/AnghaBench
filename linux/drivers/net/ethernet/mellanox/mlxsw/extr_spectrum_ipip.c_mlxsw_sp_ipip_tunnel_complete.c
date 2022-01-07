
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union mlxsw_sp_l3addr {int dummy; } mlxsw_sp_l3addr ;
struct net_device {int dummy; } ;
typedef enum mlxsw_sp_l3proto { ____Placeholder_mlxsw_sp_l3proto } mlxsw_sp_l3proto ;


 union mlxsw_sp_l3addr mlxsw_sp_ipip_netdev_daddr (int,struct net_device const*) ;
 union mlxsw_sp_l3addr mlxsw_sp_ipip_netdev_saddr (int,struct net_device const*) ;
 int mlxsw_sp_l3addr_is_zero (union mlxsw_sp_l3addr) ;

__attribute__((used)) static bool mlxsw_sp_ipip_tunnel_complete(enum mlxsw_sp_l3proto proto,
       const struct net_device *ol_dev)
{
 union mlxsw_sp_l3addr saddr = mlxsw_sp_ipip_netdev_saddr(proto, ol_dev);
 union mlxsw_sp_l3addr daddr = mlxsw_sp_ipip_netdev_daddr(proto, ol_dev);






 return !mlxsw_sp_l3addr_is_zero(saddr) &&
        !mlxsw_sp_l3addr_is_zero(daddr);
}
