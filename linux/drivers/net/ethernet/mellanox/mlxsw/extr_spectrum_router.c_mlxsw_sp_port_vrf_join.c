
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_rif {int dummy; } ;
struct mlxsw_sp {int dummy; } ;


 int NETDEV_DOWN ;
 int NETDEV_UP ;
 int __mlxsw_sp_inetaddr_event (struct mlxsw_sp*,struct net_device*,int ,struct netlink_ext_ack*) ;
 struct mlxsw_sp_rif* mlxsw_sp_rif_find_by_dev (struct mlxsw_sp*,struct net_device*) ;

__attribute__((used)) static int mlxsw_sp_port_vrf_join(struct mlxsw_sp *mlxsw_sp,
      struct net_device *l3_dev,
      struct netlink_ext_ack *extack)
{
 struct mlxsw_sp_rif *rif;




 rif = mlxsw_sp_rif_find_by_dev(mlxsw_sp, l3_dev);
 if (rif)
  __mlxsw_sp_inetaddr_event(mlxsw_sp, l3_dev, NETDEV_DOWN,
       extack);

 return __mlxsw_sp_inetaddr_event(mlxsw_sp, l3_dev, NETDEV_UP, extack);
}
