
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct mlxsw_sp_fib {TYPE_1__* vr; scalar_t__ proto; } ;
struct mlxsw_sp {int core; } ;
typedef enum mlxsw_reg_ralxx_protocol { ____Placeholder_mlxsw_reg_ralxx_protocol } mlxsw_reg_ralxx_protocol ;
struct TYPE_2__ {int id; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_RALEU_LEN ;
 int mlxsw_reg_raleu_pack (char*,int,int ,int ,int ,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int raleu ;

__attribute__((used)) static int mlxsw_sp_adj_index_mass_update_vr(struct mlxsw_sp *mlxsw_sp,
          const struct mlxsw_sp_fib *fib,
          u32 adj_index, u16 ecmp_size,
          u32 new_adj_index,
          u16 new_ecmp_size)
{
 char raleu_pl[MLXSW_REG_RALEU_LEN];

 mlxsw_reg_raleu_pack(raleu_pl,
        (enum mlxsw_reg_ralxx_protocol) fib->proto,
        fib->vr->id, adj_index, ecmp_size, new_adj_index,
        new_ecmp_size);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(raleu), raleu_pl);
}
