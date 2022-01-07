
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mlxsw_sp_acl_tcam_region {int key_info; int tcam_region_info; } ;
struct mlxsw_sp_acl_rule_info {int act_block; int values; } ;
struct mlxsw_sp_acl_ctcam_region {TYPE_2__* ops; struct mlxsw_sp_acl_tcam_region* region; } ;
struct TYPE_3__ {int index; } ;
struct mlxsw_sp_acl_ctcam_entry {TYPE_1__ parman_item; } ;
struct mlxsw_sp {int core; int acl; } ;
struct mlxsw_afk {int dummy; } ;
struct TYPE_4__ {int (* entry_insert ) (struct mlxsw_sp_acl_ctcam_region*,struct mlxsw_sp_acl_ctcam_entry*,char*) ;int (* entry_remove ) (struct mlxsw_sp_acl_ctcam_region*,struct mlxsw_sp_acl_ctcam_entry*) ;} ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_PTCE2_LEN ;
 int MLXSW_REG_PTCE2_OP_WRITE_WRITE ;
 char* mlxsw_afa_block_first_set (int ) ;
 int mlxsw_afk_encode (struct mlxsw_afk*,int ,int *,char*,char*) ;
 int mlxsw_reg_ptce2_flex_action_set_memcpy_to (char*,char*) ;
 char* mlxsw_reg_ptce2_flex_key_blocks_data (char*) ;
 char* mlxsw_reg_ptce2_mask_data (char*) ;
 int mlxsw_reg_ptce2_pack (char*,int,int ,int ,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 struct mlxsw_afk* mlxsw_sp_acl_afk (int ) ;
 int mlxsw_sp_acl_tcam_priority_get (struct mlxsw_sp*,struct mlxsw_sp_acl_rule_info*,int *,int) ;
 int ptce2 ;
 int stub1 (struct mlxsw_sp_acl_ctcam_region*,struct mlxsw_sp_acl_ctcam_entry*,char*) ;
 int stub2 (struct mlxsw_sp_acl_ctcam_region*,struct mlxsw_sp_acl_ctcam_entry*) ;

__attribute__((used)) static int
mlxsw_sp_acl_ctcam_region_entry_insert(struct mlxsw_sp *mlxsw_sp,
           struct mlxsw_sp_acl_ctcam_region *cregion,
           struct mlxsw_sp_acl_ctcam_entry *centry,
           struct mlxsw_sp_acl_rule_info *rulei,
           bool fillup_priority)
{
 struct mlxsw_sp_acl_tcam_region *region = cregion->region;
 struct mlxsw_afk *afk = mlxsw_sp_acl_afk(mlxsw_sp->acl);
 char ptce2_pl[MLXSW_REG_PTCE2_LEN];
 char *act_set;
 u32 priority;
 char *mask;
 char *key;
 int err;

 err = mlxsw_sp_acl_tcam_priority_get(mlxsw_sp, rulei, &priority,
          fillup_priority);
 if (err)
  return err;

 mlxsw_reg_ptce2_pack(ptce2_pl, 1, MLXSW_REG_PTCE2_OP_WRITE_WRITE,
        region->tcam_region_info,
        centry->parman_item.index, priority);
 key = mlxsw_reg_ptce2_flex_key_blocks_data(ptce2_pl);
 mask = mlxsw_reg_ptce2_mask_data(ptce2_pl);
 mlxsw_afk_encode(afk, region->key_info, &rulei->values, key, mask);

 err = cregion->ops->entry_insert(cregion, centry, mask);
 if (err)
  return err;


 act_set = mlxsw_afa_block_first_set(rulei->act_block);
 mlxsw_reg_ptce2_flex_action_set_memcpy_to(ptce2_pl, act_set);

 err = mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(ptce2), ptce2_pl);
 if (err)
  goto err_ptce2_write;

 return 0;

err_ptce2_write:
 cregion->ops->entry_remove(cregion, centry);
 return err;
}
