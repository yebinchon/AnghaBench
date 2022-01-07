
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_tcam_vchunk {int priority; } ;
struct mlxsw_sp_acl_tcam_region {int priv; } ;
struct mlxsw_sp_acl_tcam_ops {int (* chunk_init ) (int ,int ,int ) ;scalar_t__ chunk_priv_size; } ;
struct mlxsw_sp_acl_tcam_chunk {int priv; struct mlxsw_sp_acl_tcam_region* region; struct mlxsw_sp_acl_tcam_vchunk* vchunk; } ;
struct mlxsw_sp {struct mlxsw_sp_acl_tcam_ops* acl_tcam_ops; } ;


 int ENOMEM ;
 struct mlxsw_sp_acl_tcam_chunk* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct mlxsw_sp_acl_tcam_chunk* kzalloc (scalar_t__,int ) ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static struct mlxsw_sp_acl_tcam_chunk *
mlxsw_sp_acl_tcam_chunk_create(struct mlxsw_sp *mlxsw_sp,
          struct mlxsw_sp_acl_tcam_vchunk *vchunk,
          struct mlxsw_sp_acl_tcam_region *region)
{
 const struct mlxsw_sp_acl_tcam_ops *ops = mlxsw_sp->acl_tcam_ops;
 struct mlxsw_sp_acl_tcam_chunk *chunk;

 chunk = kzalloc(sizeof(*chunk) + ops->chunk_priv_size, GFP_KERNEL);
 if (!chunk)
  return ERR_PTR(-ENOMEM);
 chunk->vchunk = vchunk;
 chunk->region = region;

 ops->chunk_init(region->priv, chunk->priv, vchunk->priority);
 return chunk;
}
