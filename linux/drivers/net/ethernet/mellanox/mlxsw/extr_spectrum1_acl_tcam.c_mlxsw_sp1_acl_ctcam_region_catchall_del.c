
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_acl_rule_info {int dummy; } ;
struct TYPE_2__ {int cchunk; int centry; struct mlxsw_sp_acl_rule_info* rulei; } ;
struct mlxsw_sp1_acl_tcam_region {TYPE_1__ catchall; int cregion; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_acl_ctcam_chunk_fini (int *) ;
 int mlxsw_sp_acl_ctcam_entry_del (struct mlxsw_sp*,int *,int *,int *) ;
 int mlxsw_sp_acl_rulei_destroy (struct mlxsw_sp_acl_rule_info*) ;

__attribute__((used)) static void
mlxsw_sp1_acl_ctcam_region_catchall_del(struct mlxsw_sp *mlxsw_sp,
     struct mlxsw_sp1_acl_tcam_region *region)
{
 struct mlxsw_sp_acl_rule_info *rulei = region->catchall.rulei;

 mlxsw_sp_acl_ctcam_entry_del(mlxsw_sp, &region->cregion,
         &region->catchall.cchunk,
         &region->catchall.centry);
 mlxsw_sp_acl_rulei_destroy(rulei);
 mlxsw_sp_acl_ctcam_chunk_fini(&region->catchall.cchunk);
}
