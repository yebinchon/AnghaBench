
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_atcam_entry {int erp_mask; } ;


 int mlxsw_sp_acl_erp_mask_is_ctcam (int ) ;

__attribute__((used)) static bool
mlxsw_sp_acl_atcam_is_centry(const struct mlxsw_sp_acl_atcam_entry *aentry)
{
 return mlxsw_sp_acl_erp_mask_is_ctcam(aentry->erp_mask);
}
