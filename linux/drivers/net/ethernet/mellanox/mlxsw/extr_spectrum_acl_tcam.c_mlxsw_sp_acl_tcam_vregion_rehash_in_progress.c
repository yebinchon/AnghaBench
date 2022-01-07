
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_tcam_rehash_ctx {int hints_priv; } ;



__attribute__((used)) static bool
mlxsw_sp_acl_tcam_vregion_rehash_in_progress(const struct mlxsw_sp_acl_tcam_rehash_ctx *ctx)
{
 return ctx->hints_priv;
}
