
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mlxsw_sp_acl_tcam_region {int tcam_region_info; } ;
struct mlxsw_sp_acl_rule_info {int act_block; } ;
struct mlxsw_sp_acl_atcam_region {struct mlxsw_sp_acl_tcam_region* region; } ;
struct mlxsw_sp_acl_atcam_lkey_id {int id; int refcnt; } ;
struct TYPE_2__ {int value; int mask; int start; } ;
struct mlxsw_sp_acl_atcam_entry {TYPE_1__ delta_info; int enc_key; int erp_mask; struct mlxsw_sp_acl_atcam_lkey_id* lkey_id; } ;
struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_PTCE3_LEN ;
 int MLXSW_REG_PTCE3_OP_WRITE_UPDATE ;
 int mlxsw_afa_block_first_kvdl_index (int ) ;
 int mlxsw_reg_ptce3_pack (char*,int,int ,int ,int ,int ,int ,int ,int ,int ,int,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int mlxsw_sp_acl_erp_mask_erp_id (int ) ;
 int mlxsw_sp_acl_tcam_priority_get (struct mlxsw_sp*,struct mlxsw_sp_acl_rule_info*,int *,int) ;
 int ptce3 ;
 int refcount_read (int *) ;

__attribute__((used)) static int
mlxsw_sp_acl_atcam_region_entry_action_replace(struct mlxsw_sp *mlxsw_sp,
            struct mlxsw_sp_acl_atcam_region *aregion,
            struct mlxsw_sp_acl_atcam_entry *aentry,
            struct mlxsw_sp_acl_rule_info *rulei)
{
 struct mlxsw_sp_acl_atcam_lkey_id *lkey_id = aentry->lkey_id;
 u8 erp_id = mlxsw_sp_acl_erp_mask_erp_id(aentry->erp_mask);
 struct mlxsw_sp_acl_tcam_region *region = aregion->region;
 char ptce3_pl[MLXSW_REG_PTCE3_LEN];
 u32 kvdl_index, priority;
 int err;

 err = mlxsw_sp_acl_tcam_priority_get(mlxsw_sp, rulei, &priority, 1);
 if (err)
  return err;
 kvdl_index = mlxsw_afa_block_first_kvdl_index(rulei->act_block);
 mlxsw_reg_ptce3_pack(ptce3_pl, 1, MLXSW_REG_PTCE3_OP_WRITE_UPDATE,
        priority, region->tcam_region_info,
        aentry->enc_key, erp_id,
        aentry->delta_info.start,
        aentry->delta_info.mask,
        aentry->delta_info.value,
        refcount_read(&lkey_id->refcnt) != 1, lkey_id->id,
        kvdl_index);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(ptce3), ptce3_pl);
}
