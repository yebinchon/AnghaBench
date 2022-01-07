
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp2_acl_tcam_region {int aregion; } ;
struct mlxsw_sp2_acl_tcam_chunk {int achunk; } ;


 int mlxsw_sp_acl_atcam_chunk_init (int *,int *,unsigned int) ;

__attribute__((used)) static void mlxsw_sp2_acl_tcam_chunk_init(void *region_priv, void *chunk_priv,
       unsigned int priority)
{
 struct mlxsw_sp2_acl_tcam_region *region = region_priv;
 struct mlxsw_sp2_acl_tcam_chunk *chunk = chunk_priv;

 mlxsw_sp_acl_atcam_chunk_init(&region->aregion, &chunk->achunk,
          priority);
}
