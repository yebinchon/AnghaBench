
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_ctcam_region {int dummy; } ;
struct mlxsw_sp_acl_ctcam_entry {int dummy; } ;
struct mlxsw_sp_acl_atcam_region {int dummy; } ;
struct mlxsw_sp_acl_atcam_entry {int erp_mask; } ;


 int mlxsw_sp_acl_erp_mask_put (struct mlxsw_sp_acl_atcam_region*,int ) ;
 struct mlxsw_sp_acl_atcam_entry* mlxsw_sp_acl_tcam_centry_aentry (struct mlxsw_sp_acl_ctcam_entry*) ;
 struct mlxsw_sp_acl_atcam_region* mlxsw_sp_acl_tcam_cregion_aregion (struct mlxsw_sp_acl_ctcam_region*) ;

__attribute__((used)) static void
mlxsw_sp2_acl_ctcam_region_entry_remove(struct mlxsw_sp_acl_ctcam_region *cregion,
     struct mlxsw_sp_acl_ctcam_entry *centry)
{
 struct mlxsw_sp_acl_atcam_region *aregion;
 struct mlxsw_sp_acl_atcam_entry *aentry;

 aregion = mlxsw_sp_acl_tcam_cregion_aregion(cregion);
 aentry = mlxsw_sp_acl_tcam_centry_aentry(centry);

 mlxsw_sp_acl_erp_mask_put(aregion, aentry->erp_mask);
}
