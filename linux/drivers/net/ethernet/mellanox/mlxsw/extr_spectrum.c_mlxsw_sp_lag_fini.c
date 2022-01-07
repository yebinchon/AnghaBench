
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp {int lags; } ;


 int kfree (int ) ;

__attribute__((used)) static void mlxsw_sp_lag_fini(struct mlxsw_sp *mlxsw_sp)
{
 kfree(mlxsw_sp->lags);
}
