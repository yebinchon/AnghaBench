
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlxsw_sp_sb_pool_des {int pool; } ;
struct mlxsw_sp_sb_mm {size_t pool_index; int max_buff; int min_buff; } ;
struct mlxsw_sp {int core; TYPE_1__* sb_vals; } ;
struct TYPE_2__ {int mms_count; struct mlxsw_sp_sb_pool_des* pool_dess; struct mlxsw_sp_sb_mm* mms; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_SBMM_LEN ;
 int mlxsw_reg_sbmm_pack (char*,int,int ,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int mlxsw_sp_bytes_cells (struct mlxsw_sp*,int ) ;
 int sbmm ;

__attribute__((used)) static int mlxsw_sp_sb_mms_init(struct mlxsw_sp *mlxsw_sp)
{
 char sbmm_pl[MLXSW_REG_SBMM_LEN];
 int i;
 int err;

 for (i = 0; i < mlxsw_sp->sb_vals->mms_count; i++) {
  const struct mlxsw_sp_sb_pool_des *des;
  const struct mlxsw_sp_sb_mm *mc;
  u32 min_buff;

  mc = &mlxsw_sp->sb_vals->mms[i];
  des = &mlxsw_sp->sb_vals->pool_dess[mc->pool_index];



  min_buff = mlxsw_sp_bytes_cells(mlxsw_sp, mc->min_buff);
  mlxsw_reg_sbmm_pack(sbmm_pl, i, min_buff, mc->max_buff,
        des->pool);
  err = mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(sbmm), sbmm_pl);
  if (err)
   return err;
 }
 return 0;
}
