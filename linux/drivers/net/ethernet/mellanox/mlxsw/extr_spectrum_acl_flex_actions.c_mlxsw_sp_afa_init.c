
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp {int afa; int afa_ops; int core; } ;


 int ACL_ACTIONS_PER_SET ;
 int MLXSW_CORE_RES_GET (int ,int ) ;
 int PTR_ERR_OR_ZERO (int ) ;
 int mlxsw_afa_create (int ,int ,struct mlxsw_sp*) ;

int mlxsw_sp_afa_init(struct mlxsw_sp *mlxsw_sp)
{
 mlxsw_sp->afa = mlxsw_afa_create(MLXSW_CORE_RES_GET(mlxsw_sp->core,
           ACL_ACTIONS_PER_SET),
      mlxsw_sp->afa_ops, mlxsw_sp);
 return PTR_ERR_OR_ZERO(mlxsw_sp->afa);
}
