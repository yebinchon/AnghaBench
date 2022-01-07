
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_atcam_region {int cregion; } ;
struct mlxsw_sp_acl_atcam_entry {int centry; } ;
struct mlxsw_sp_acl_atcam_chunk {int cchunk; } ;
struct mlxsw_sp {int dummy; } ;


 int __mlxsw_sp_acl_atcam_entry_del (struct mlxsw_sp*,struct mlxsw_sp_acl_atcam_region*,struct mlxsw_sp_acl_atcam_entry*) ;
 scalar_t__ mlxsw_sp_acl_atcam_is_centry (struct mlxsw_sp_acl_atcam_entry*) ;
 int mlxsw_sp_acl_ctcam_entry_del (struct mlxsw_sp*,int *,int *,int *) ;

void mlxsw_sp_acl_atcam_entry_del(struct mlxsw_sp *mlxsw_sp,
      struct mlxsw_sp_acl_atcam_region *aregion,
      struct mlxsw_sp_acl_atcam_chunk *achunk,
      struct mlxsw_sp_acl_atcam_entry *aentry)
{
 if (mlxsw_sp_acl_atcam_is_centry(aentry))
  mlxsw_sp_acl_ctcam_entry_del(mlxsw_sp, &aregion->cregion,
          &achunk->cchunk, &aentry->centry);
 else
  __mlxsw_sp_acl_atcam_entry_del(mlxsw_sp, aregion, aentry);
}
