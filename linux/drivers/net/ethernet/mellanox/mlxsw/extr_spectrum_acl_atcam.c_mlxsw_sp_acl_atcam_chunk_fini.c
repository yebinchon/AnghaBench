
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_atcam_chunk {int cchunk; } ;


 int mlxsw_sp_acl_ctcam_chunk_fini (int *) ;

void mlxsw_sp_acl_atcam_chunk_fini(struct mlxsw_sp_acl_atcam_chunk *achunk)
{
 mlxsw_sp_acl_ctcam_chunk_fini(&achunk->cchunk);
}
