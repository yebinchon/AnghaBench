
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_acl_atcam_region {TYPE_1__* region; } ;
struct mlxsw_sp {int core; } ;
struct TYPE_2__ {int id; struct mlxsw_sp* mlxsw_sp; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_PERCR_LEN ;
 int mlxsw_reg_percr_pack (char*,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int percr ;

__attribute__((used)) static int
mlxsw_sp_acl_erp_master_mask_init(struct mlxsw_sp_acl_atcam_region *aregion)
{
 struct mlxsw_sp *mlxsw_sp = aregion->region->mlxsw_sp;
 char percr_pl[MLXSW_REG_PERCR_LEN];

 mlxsw_reg_percr_pack(percr_pl, aregion->region->id);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(percr), percr_pl);
}
