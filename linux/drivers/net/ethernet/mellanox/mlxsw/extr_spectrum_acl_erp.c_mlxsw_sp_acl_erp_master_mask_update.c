
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mlxsw_sp_acl_tcam_region {int id; struct mlxsw_sp* mlxsw_sp; } ;
struct TYPE_4__ {int bitmap; } ;
struct mlxsw_sp_acl_erp_table {TYPE_2__ master_mask; TYPE_1__* aregion; } ;
struct mlxsw_sp {int core; } ;
struct TYPE_3__ {struct mlxsw_sp_acl_tcam_region* region; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_PERCR_LEN ;
 int MLXSW_SP_ACL_TCAM_MASK_LEN ;
 int bitmap_to_arr32 (int *,int ,int ) ;
 char* mlxsw_reg_percr_master_mask_data (char*) ;
 int mlxsw_reg_percr_pack (char*,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int percr ;

__attribute__((used)) static int
mlxsw_sp_acl_erp_master_mask_update(struct mlxsw_sp_acl_erp_table *erp_table)
{
 struct mlxsw_sp_acl_tcam_region *region = erp_table->aregion->region;
 struct mlxsw_sp *mlxsw_sp = region->mlxsw_sp;
 char percr_pl[MLXSW_REG_PERCR_LEN];
 char *master_mask;

 mlxsw_reg_percr_pack(percr_pl, region->id);
 master_mask = mlxsw_reg_percr_master_mask_data(percr_pl);
 bitmap_to_arr32((u32 *) master_mask, erp_table->master_mask.bitmap,
   MLXSW_SP_ACL_TCAM_MASK_LEN);

 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(percr), percr_pl);
}
