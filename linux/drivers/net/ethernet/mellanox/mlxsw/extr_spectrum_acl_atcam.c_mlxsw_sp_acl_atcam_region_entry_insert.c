
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mlxsw_sp_acl_tcam_region {int tcam_region_info; } ;
struct mlxsw_sp_acl_rule_info {int act_block; } ;
struct mlxsw_sp_acl_atcam_region {TYPE_2__* ops; struct mlxsw_sp_acl_tcam_region* region; } ;
struct mlxsw_sp_acl_atcam_lkey_id {int id; int refcnt; } ;
struct TYPE_3__ {int value; int mask; int start; } ;
struct mlxsw_sp_acl_atcam_entry {TYPE_1__ delta_info; int enc_key; struct mlxsw_sp_acl_atcam_lkey_id* lkey_id; int erp_mask; } ;
struct mlxsw_sp {int core; } ;
struct TYPE_4__ {int (* lkey_id_put ) (struct mlxsw_sp_acl_atcam_region*,struct mlxsw_sp_acl_atcam_lkey_id*) ;struct mlxsw_sp_acl_atcam_lkey_id* (* lkey_id_get ) (struct mlxsw_sp_acl_atcam_region*,int ,int ) ;} ;


 scalar_t__ IS_ERR (struct mlxsw_sp_acl_atcam_lkey_id*) ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_PTCE3_LEN ;
 int MLXSW_REG_PTCE3_OP_WRITE_WRITE ;
 int PTR_ERR (struct mlxsw_sp_acl_atcam_lkey_id*) ;
 int mlxsw_afa_block_first_kvdl_index (int ) ;
 int mlxsw_reg_ptce3_pack (char*,int,int ,int ,int ,int ,int ,int ,int ,int ,int,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int mlxsw_sp_acl_erp_mask_erp_id (int ) ;
 int mlxsw_sp_acl_tcam_priority_get (struct mlxsw_sp*,struct mlxsw_sp_acl_rule_info*,int *,int) ;
 int ptce3 ;
 int refcount_read (int *) ;
 struct mlxsw_sp_acl_atcam_lkey_id* stub1 (struct mlxsw_sp_acl_atcam_region*,int ,int ) ;
 int stub2 (struct mlxsw_sp_acl_atcam_region*,struct mlxsw_sp_acl_atcam_lkey_id*) ;

__attribute__((used)) static int
mlxsw_sp_acl_atcam_region_entry_insert(struct mlxsw_sp *mlxsw_sp,
           struct mlxsw_sp_acl_atcam_region *aregion,
           struct mlxsw_sp_acl_atcam_entry *aentry,
           struct mlxsw_sp_acl_rule_info *rulei)
{
 struct mlxsw_sp_acl_tcam_region *region = aregion->region;
 u8 erp_id = mlxsw_sp_acl_erp_mask_erp_id(aentry->erp_mask);
 struct mlxsw_sp_acl_atcam_lkey_id *lkey_id;
 char ptce3_pl[MLXSW_REG_PTCE3_LEN];
 u32 kvdl_index, priority;
 int err;

 err = mlxsw_sp_acl_tcam_priority_get(mlxsw_sp, rulei, &priority, 1);
 if (err)
  return err;

 lkey_id = aregion->ops->lkey_id_get(aregion, aentry->enc_key, erp_id);
 if (IS_ERR(lkey_id))
  return PTR_ERR(lkey_id);
 aentry->lkey_id = lkey_id;

 kvdl_index = mlxsw_afa_block_first_kvdl_index(rulei->act_block);
 mlxsw_reg_ptce3_pack(ptce3_pl, 1, MLXSW_REG_PTCE3_OP_WRITE_WRITE,
        priority, region->tcam_region_info,
        aentry->enc_key, erp_id,
        aentry->delta_info.start,
        aentry->delta_info.mask,
        aentry->delta_info.value,
        refcount_read(&lkey_id->refcnt) != 1, lkey_id->id,
        kvdl_index);
 err = mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(ptce3), ptce3_pl);
 if (err)
  goto err_ptce3_write;

 return 0;

err_ptce3_write:
 aregion->ops->lkey_id_put(aregion, lkey_id);
 return err;
}
