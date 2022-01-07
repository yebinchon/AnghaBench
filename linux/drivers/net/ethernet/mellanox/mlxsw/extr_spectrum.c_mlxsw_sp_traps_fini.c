
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp {int listeners_count; int listeners; } ;


 int ARRAY_SIZE (int ) ;
 int mlxsw_sp_listener ;
 int mlxsw_sp_traps_unregister (struct mlxsw_sp*,int ,int ) ;

__attribute__((used)) static void mlxsw_sp_traps_fini(struct mlxsw_sp *mlxsw_sp)
{
 mlxsw_sp_traps_unregister(mlxsw_sp, mlxsw_sp->listeners,
      mlxsw_sp->listeners_count);
 mlxsw_sp_traps_unregister(mlxsw_sp, mlxsw_sp_listener,
      ARRAY_SIZE(mlxsw_sp_listener));
}
