
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_tcam_ops {int (* chunk_fini ) (int ) ;} ;
struct mlxsw_sp_acl_tcam_chunk {int priv; } ;
struct mlxsw_sp {struct mlxsw_sp_acl_tcam_ops* acl_tcam_ops; } ;


 int kfree (struct mlxsw_sp_acl_tcam_chunk*) ;
 int stub1 (int ) ;

__attribute__((used)) static void
mlxsw_sp_acl_tcam_chunk_destroy(struct mlxsw_sp *mlxsw_sp,
    struct mlxsw_sp_acl_tcam_chunk *chunk)
{
 const struct mlxsw_sp_acl_tcam_ops *ops = mlxsw_sp->acl_tcam_ops;

 ops->chunk_fini(chunk->priv);
 kfree(chunk);
}
