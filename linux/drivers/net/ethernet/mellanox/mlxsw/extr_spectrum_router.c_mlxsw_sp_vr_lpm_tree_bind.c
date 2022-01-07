
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mlxsw_sp_fib {scalar_t__ proto; TYPE_1__* vr; } ;
struct mlxsw_sp {int core; } ;
typedef enum mlxsw_reg_ralxx_protocol { ____Placeholder_mlxsw_reg_ralxx_protocol } mlxsw_reg_ralxx_protocol ;
struct TYPE_2__ {int id; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_RALTB_LEN ;
 int mlxsw_reg_raltb_pack (char*,int ,int,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int raltb ;

__attribute__((used)) static int mlxsw_sp_vr_lpm_tree_bind(struct mlxsw_sp *mlxsw_sp,
         const struct mlxsw_sp_fib *fib, u8 tree_id)
{
 char raltb_pl[MLXSW_REG_RALTB_LEN];

 mlxsw_reg_raltb_pack(raltb_pl, fib->vr->id,
        (enum mlxsw_reg_ralxx_protocol) fib->proto,
        tree_id);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(raltb), raltb_pl);
}
