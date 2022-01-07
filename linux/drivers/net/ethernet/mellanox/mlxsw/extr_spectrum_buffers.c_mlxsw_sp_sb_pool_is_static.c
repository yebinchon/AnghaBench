
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sp_sb_pr {scalar_t__ mode; } ;
struct mlxsw_sp {int dummy; } ;


 scalar_t__ MLXSW_REG_SBPR_MODE_STATIC ;
 struct mlxsw_sp_sb_pr* mlxsw_sp_sb_pr_get (struct mlxsw_sp*,int ) ;

__attribute__((used)) static bool
mlxsw_sp_sb_pool_is_static(struct mlxsw_sp *mlxsw_sp, u16 pool_index)
{
 struct mlxsw_sp_sb_pr *pr = mlxsw_sp_sb_pr_get(mlxsw_sp, pool_index);

 return pr->mode == MLXSW_REG_SBPR_MODE_STATIC;
}
