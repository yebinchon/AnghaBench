
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_lpm_tree {int id; scalar_t__ proto; } ;
struct mlxsw_sp {int core; } ;
typedef enum mlxsw_reg_ralxx_protocol { ____Placeholder_mlxsw_reg_ralxx_protocol } mlxsw_reg_ralxx_protocol ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_RALTA_LEN ;
 int mlxsw_reg_ralta_pack (char*,int,int,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int ralta ;

__attribute__((used)) static void mlxsw_sp_lpm_tree_free(struct mlxsw_sp *mlxsw_sp,
       struct mlxsw_sp_lpm_tree *lpm_tree)
{
 char ralta_pl[MLXSW_REG_RALTA_LEN];

 mlxsw_reg_ralta_pack(ralta_pl, 0,
        (enum mlxsw_reg_ralxx_protocol) lpm_tree->proto,
        lpm_tree->id);
 mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(ralta), ralta_pl);
}
