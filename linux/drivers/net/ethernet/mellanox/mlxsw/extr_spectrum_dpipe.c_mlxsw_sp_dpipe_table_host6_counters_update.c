
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp {int dummy; } ;


 int AF_INET6 ;
 int mlxsw_sp_dpipe_table_host_counters_update (struct mlxsw_sp*,int,int ) ;

__attribute__((used)) static int mlxsw_sp_dpipe_table_host6_counters_update(void *priv, bool enable)
{
 struct mlxsw_sp *mlxsw_sp = priv;

 mlxsw_sp_dpipe_table_host_counters_update(mlxsw_sp, enable, AF_INET6);
 return 0;
}
