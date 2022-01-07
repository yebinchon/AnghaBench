
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct mlxsw_sp_acl_tcam_region {int tcam_region_info; } ;
struct mlxsw_sp_acl_atcam_region {TYPE_2__* ops; struct mlxsw_sp_acl_tcam_region* region; } ;
struct mlxsw_sp_acl_atcam_lkey_id {int id; int refcnt; } ;
struct TYPE_3__ {int value; int mask; int start; } ;
struct mlxsw_sp_acl_atcam_entry {TYPE_1__ delta_info; int enc_key; int erp_mask; struct mlxsw_sp_acl_atcam_lkey_id* lkey_id; } ;
struct mlxsw_sp {int core; } ;
struct TYPE_4__ {int (* lkey_id_put ) (struct mlxsw_sp_acl_atcam_region*,struct mlxsw_sp_acl_atcam_lkey_id*) ;} ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_PTCE3_LEN ;
 int MLXSW_REG_PTCE3_OP_WRITE_WRITE ;
 int mlxsw_reg_ptce3_pack (char*,int,int ,int ,int ,int ,int ,int ,int ,int ,int,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int mlxsw_sp_acl_erp_mask_erp_id (int ) ;
 int ptce3 ;
 int refcount_read (int *) ;
 int stub1 (struct mlxsw_sp_acl_atcam_region*,struct mlxsw_sp_acl_atcam_lkey_id*) ;

__attribute__((used)) static void
mlxsw_sp_acl_atcam_region_entry_remove(struct mlxsw_sp *mlxsw_sp,
           struct mlxsw_sp_acl_atcam_region *aregion,
           struct mlxsw_sp_acl_atcam_entry *aentry)
{
 struct mlxsw_sp_acl_atcam_lkey_id *lkey_id = aentry->lkey_id;
 struct mlxsw_sp_acl_tcam_region *region = aregion->region;
 u8 erp_id = mlxsw_sp_acl_erp_mask_erp_id(aentry->erp_mask);
 char ptce3_pl[MLXSW_REG_PTCE3_LEN];

 mlxsw_reg_ptce3_pack(ptce3_pl, 0, MLXSW_REG_PTCE3_OP_WRITE_WRITE, 0,
        region->tcam_region_info,
        aentry->enc_key, erp_id,
        aentry->delta_info.start,
        aentry->delta_info.mask,
        aentry->delta_info.value,
        refcount_read(&lkey_id->refcnt) != 1,
        lkey_id->id, 0);
 mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(ptce3), ptce3_pl);
 aregion->ops->lkey_id_put(aregion, lkey_id);
}
