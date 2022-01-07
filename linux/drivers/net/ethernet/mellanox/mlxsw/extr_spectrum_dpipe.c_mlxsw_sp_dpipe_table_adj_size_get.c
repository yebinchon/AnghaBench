
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_dpipe_table_adj_size (struct mlxsw_sp*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static u64
mlxsw_sp_dpipe_table_adj_size_get(void *priv)
{
 struct mlxsw_sp *mlxsw_sp = priv;
 u64 size;

 rtnl_lock();
 size = mlxsw_sp_dpipe_table_adj_size(mlxsw_sp);
 rtnl_unlock();

 return size;
}
