
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp {int dummy; } ;




 int mlxsw_sp_rif_macvlan_add (struct mlxsw_sp*,struct net_device*,struct netlink_ext_ack*) ;
 int mlxsw_sp_rif_macvlan_del (struct mlxsw_sp*,struct net_device*) ;

__attribute__((used)) static int mlxsw_sp_inetaddr_macvlan_event(struct mlxsw_sp *mlxsw_sp,
        struct net_device *macvlan_dev,
        unsigned long event,
        struct netlink_ext_ack *extack)
{
 switch (event) {
 case 128:
  return mlxsw_sp_rif_macvlan_add(mlxsw_sp, macvlan_dev, extack);
 case 129:
  mlxsw_sp_rif_macvlan_del(mlxsw_sp, macvlan_dev);
  break;
 }

 return 0;
}
