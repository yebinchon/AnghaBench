
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp {int dummy; } ;
struct devlink_dpipe_dump_ctx {int dummy; } ;


 int AF_INET6 ;
 int mlxsw_sp_dpipe_table_host_entries_dump (struct mlxsw_sp*,int,struct devlink_dpipe_dump_ctx*,int ) ;

__attribute__((used)) static int
mlxsw_sp_dpipe_table_host6_entries_dump(void *priv, bool counters_enabled,
     struct devlink_dpipe_dump_ctx *dump_ctx)
{
 struct mlxsw_sp *mlxsw_sp = priv;

 return mlxsw_sp_dpipe_table_host_entries_dump(mlxsw_sp,
            counters_enabled,
            dump_ctx, AF_INET6);
}
