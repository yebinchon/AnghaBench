
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_atcam_region {int cregion; } ;
struct mlxsw_sp_acl_atcam_chunk {int cchunk; } ;


 int mlxsw_sp_acl_ctcam_chunk_init (int *,int *,unsigned int) ;

void mlxsw_sp_acl_atcam_chunk_init(struct mlxsw_sp_acl_atcam_region *aregion,
       struct mlxsw_sp_acl_atcam_chunk *achunk,
       unsigned int priority)
{
 mlxsw_sp_acl_ctcam_chunk_init(&aregion->cregion, &achunk->cchunk,
          priority);
}
