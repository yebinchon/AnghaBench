
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef void* u32 ;
typedef size_t u16 ;
struct mlxsw_sp_sb_pool_des {int dir; int pool; } ;
struct mlxsw_sp_sb_pm {void* max_buff; void* min_buff; } ;
struct mlxsw_sp {int core; TYPE_1__* sb_vals; } ;
struct TYPE_2__ {struct mlxsw_sp_sb_pool_des* pool_dess; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_SBPM_LEN ;
 int mlxsw_reg_sbpm_pack (char*,int ,int ,int ,int,void*,void*) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 struct mlxsw_sp_sb_pm* mlxsw_sp_sb_pm_get (struct mlxsw_sp*,int ,size_t) ;
 int sbpm ;

__attribute__((used)) static int mlxsw_sp_sb_pm_write(struct mlxsw_sp *mlxsw_sp, u8 local_port,
    u16 pool_index, u32 min_buff, u32 max_buff)
{
 const struct mlxsw_sp_sb_pool_des *des =
  &mlxsw_sp->sb_vals->pool_dess[pool_index];
 char sbpm_pl[MLXSW_REG_SBPM_LEN];
 struct mlxsw_sp_sb_pm *pm;
 int err;

 mlxsw_reg_sbpm_pack(sbpm_pl, local_port, des->pool, des->dir, 0,
       min_buff, max_buff);
 err = mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(sbpm), sbpm_pl);
 if (err)
  return err;

 pm = mlxsw_sp_sb_pm_get(mlxsw_sp, local_port, pool_index);
 pm->min_buff = min_buff;
 pm->max_buff = max_buff;
 return 0;
}
