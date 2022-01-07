
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlxsw_sp_ipip_entry {int dummy; } ;
struct mlxsw_sp {int dummy; } ;


 struct mlxsw_sp_ipip_entry* mlxsw_sp_ipip_entry_find_by_ol_dev (struct mlxsw_sp*,struct net_device*) ;
 int mlxsw_sp_ipip_entry_ol_down_event (struct mlxsw_sp*,struct mlxsw_sp_ipip_entry*) ;

__attribute__((used)) static void mlxsw_sp_netdevice_ipip_ol_down_event(struct mlxsw_sp *mlxsw_sp,
        struct net_device *ol_dev)
{
 struct mlxsw_sp_ipip_entry *ipip_entry;

 ipip_entry = mlxsw_sp_ipip_entry_find_by_ol_dev(mlxsw_sp, ol_dev);
 if (ipip_entry)
  mlxsw_sp_ipip_entry_ol_down_event(mlxsw_sp, ipip_entry);
}
