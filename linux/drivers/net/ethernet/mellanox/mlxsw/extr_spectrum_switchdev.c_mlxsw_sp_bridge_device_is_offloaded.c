
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlxsw_sp {int bridge; } ;


 int mlxsw_sp_bridge_device_find (int ,struct net_device const*) ;

bool mlxsw_sp_bridge_device_is_offloaded(const struct mlxsw_sp *mlxsw_sp,
      const struct net_device *br_dev)
{
 return !!mlxsw_sp_bridge_device_find(mlxsw_sp->bridge, br_dev);
}
