
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlxsw_sp_acl_atcam_lkey_id {int dummy; } ;
struct mlxsw_sp_acl_atcam_region_generic {struct mlxsw_sp_acl_atcam_lkey_id dummy_lkey_id; } ;
struct mlxsw_sp_acl_atcam_region {struct mlxsw_sp_acl_atcam_region_generic* priv; } ;



__attribute__((used)) static struct mlxsw_sp_acl_atcam_lkey_id *
mlxsw_sp_acl_atcam_generic_lkey_id_get(struct mlxsw_sp_acl_atcam_region *aregion,
           char *enc_key, u8 erp_id)
{
 struct mlxsw_sp_acl_atcam_region_generic *region_generic;

 region_generic = aregion->priv;
 return &region_generic->dummy_lkey_id;
}
