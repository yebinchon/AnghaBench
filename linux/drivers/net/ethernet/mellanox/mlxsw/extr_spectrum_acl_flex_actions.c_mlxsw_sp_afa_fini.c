
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp {int afa; } ;


 int mlxsw_afa_destroy (int ) ;

void mlxsw_sp_afa_fini(struct mlxsw_sp *mlxsw_sp)
{
 mlxsw_afa_destroy(mlxsw_sp->afa);
}
