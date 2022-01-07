
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_rule_info {int dummy; } ;
struct mlxsw_sp_acl_atcam_region {int cregion; } ;
struct mlxsw_sp_acl_atcam_entry {int centry; } ;
struct mlxsw_sp_acl_atcam_chunk {int cchunk; } ;
struct mlxsw_sp {int dummy; } ;


 int __mlxsw_sp_acl_atcam_entry_add (struct mlxsw_sp*,struct mlxsw_sp_acl_atcam_region*,struct mlxsw_sp_acl_atcam_entry*,struct mlxsw_sp_acl_rule_info*) ;
 int mlxsw_sp_acl_ctcam_entry_add (struct mlxsw_sp*,int *,int *,int *,struct mlxsw_sp_acl_rule_info*,int) ;
 int trace_mlxsw_sp_acl_atcam_entry_add_ctcam_spill (struct mlxsw_sp*,struct mlxsw_sp_acl_atcam_region*) ;

int mlxsw_sp_acl_atcam_entry_add(struct mlxsw_sp *mlxsw_sp,
     struct mlxsw_sp_acl_atcam_region *aregion,
     struct mlxsw_sp_acl_atcam_chunk *achunk,
     struct mlxsw_sp_acl_atcam_entry *aentry,
     struct mlxsw_sp_acl_rule_info *rulei)
{
 int err;

 err = __mlxsw_sp_acl_atcam_entry_add(mlxsw_sp, aregion, aentry, rulei);
 if (!err)
  return 0;




 trace_mlxsw_sp_acl_atcam_entry_add_ctcam_spill(mlxsw_sp, aregion);
 err = mlxsw_sp_acl_ctcam_entry_add(mlxsw_sp, &aregion->cregion,
        &achunk->cchunk, &aentry->centry,
        rulei, 1);
 if (!err)
  return 0;

 return err;
}
