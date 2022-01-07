
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_tcam_vchunk {int * chunk2; } ;
struct mlxsw_sp_acl_tcam_rehash_ctx {int * current_vchunk; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_acl_tcam_chunk_destroy (struct mlxsw_sp*,int *) ;

__attribute__((used)) static void
mlxsw_sp_acl_tcam_vchunk_migrate_end(struct mlxsw_sp *mlxsw_sp,
         struct mlxsw_sp_acl_tcam_vchunk *vchunk,
         struct mlxsw_sp_acl_tcam_rehash_ctx *ctx)
{
 mlxsw_sp_acl_tcam_chunk_destroy(mlxsw_sp, vchunk->chunk2);
 vchunk->chunk2 = ((void*)0);
 ctx->current_vchunk = ((void*)0);
}
