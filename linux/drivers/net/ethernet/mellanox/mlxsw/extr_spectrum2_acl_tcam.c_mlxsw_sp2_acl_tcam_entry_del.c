
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp2_acl_tcam_region {int aregion; } ;
struct mlxsw_sp2_acl_tcam_entry {int aentry; } ;
struct mlxsw_sp2_acl_tcam_chunk {int achunk; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_acl_atcam_entry_del (struct mlxsw_sp*,int *,int *,int *) ;

__attribute__((used)) static void mlxsw_sp2_acl_tcam_entry_del(struct mlxsw_sp *mlxsw_sp,
      void *region_priv, void *chunk_priv,
      void *entry_priv)
{
 struct mlxsw_sp2_acl_tcam_region *region = region_priv;
 struct mlxsw_sp2_acl_tcam_chunk *chunk = chunk_priv;
 struct mlxsw_sp2_acl_tcam_entry *entry = entry_priv;

 mlxsw_sp_acl_atcam_entry_del(mlxsw_sp, &region->aregion, &chunk->achunk,
         &entry->aentry);
}
