
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_ipip_entry_find_by_ul_dev (struct mlxsw_sp const*,struct net_device const*,int *) ;

bool mlxsw_sp_netdev_is_ipip_ul(const struct mlxsw_sp *mlxsw_sp,
    const struct net_device *dev)
{
 return mlxsw_sp_ipip_entry_find_by_ul_dev(mlxsw_sp, dev, ((void*)0));
}
