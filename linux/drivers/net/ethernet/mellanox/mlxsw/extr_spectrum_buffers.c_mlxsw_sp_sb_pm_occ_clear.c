
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u16 ;
struct mlxsw_sp_sb_pool_des {scalar_t__ dir; int pool; } ;
struct mlxsw_sp {int core; TYPE_1__* sb_vals; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {struct mlxsw_sp_sb_pool_des* pool_dess; } ;


 int MLXSW_PORT_CPU_PORT ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_SBPM_LEN ;
 scalar_t__ MLXSW_REG_SBXX_DIR_INGRESS ;
 int mlxsw_reg_sbpm_pack (char*,int ,int ,scalar_t__,int,int ,int ) ;
 int mlxsw_reg_trans_query (int ,int ,char*,struct list_head*,int *,int ) ;
 int sbpm ;

__attribute__((used)) static int mlxsw_sp_sb_pm_occ_clear(struct mlxsw_sp *mlxsw_sp, u8 local_port,
        u16 pool_index, struct list_head *bulk_list)
{
 const struct mlxsw_sp_sb_pool_des *des =
  &mlxsw_sp->sb_vals->pool_dess[pool_index];
 char sbpm_pl[MLXSW_REG_SBPM_LEN];

 if (local_port == MLXSW_PORT_CPU_PORT &&
     des->dir == MLXSW_REG_SBXX_DIR_INGRESS)
  return 0;

 mlxsw_reg_sbpm_pack(sbpm_pl, local_port, des->pool, des->dir,
       1, 0, 0);
 return mlxsw_reg_trans_query(mlxsw_sp->core, MLXSW_REG(sbpm), sbpm_pl,
         bulk_list, ((void*)0), 0);
}
