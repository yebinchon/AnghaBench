
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_tcam_vregion {int lock; } ;
struct mlxsw_sp_acl_tcam_vgroup {int vchunk_ht; } ;
struct mlxsw_sp_acl_tcam_vchunk {struct mlxsw_sp_acl_tcam_vregion* vregion; int ht_node; scalar_t__ chunk; scalar_t__ chunk2; int list; struct mlxsw_sp_acl_tcam_vgroup* vgroup; } ;
struct mlxsw_sp {int dummy; } ;


 int kfree (struct mlxsw_sp_acl_tcam_vchunk*) ;
 int list_del (int *) ;
 int mlxsw_sp_acl_tcam_chunk_destroy (struct mlxsw_sp*,scalar_t__) ;
 int mlxsw_sp_acl_tcam_rehash_ctx_vregion_changed (struct mlxsw_sp_acl_tcam_vregion*) ;
 int mlxsw_sp_acl_tcam_vchunk_ht_params ;
 int mlxsw_sp_acl_tcam_vregion_put (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_vregion*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rhashtable_remove_fast (int *,int *,int ) ;

__attribute__((used)) static void
mlxsw_sp_acl_tcam_vchunk_destroy(struct mlxsw_sp *mlxsw_sp,
     struct mlxsw_sp_acl_tcam_vchunk *vchunk)
{
 struct mlxsw_sp_acl_tcam_vregion *vregion = vchunk->vregion;
 struct mlxsw_sp_acl_tcam_vgroup *vgroup = vchunk->vgroup;

 mutex_lock(&vregion->lock);
 mlxsw_sp_acl_tcam_rehash_ctx_vregion_changed(vregion);
 list_del(&vchunk->list);
 if (vchunk->chunk2)
  mlxsw_sp_acl_tcam_chunk_destroy(mlxsw_sp, vchunk->chunk2);
 mlxsw_sp_acl_tcam_chunk_destroy(mlxsw_sp, vchunk->chunk);
 mutex_unlock(&vregion->lock);
 rhashtable_remove_fast(&vgroup->vchunk_ht, &vchunk->ht_node,
          mlxsw_sp_acl_tcam_vchunk_ht_params);
 mlxsw_sp_acl_tcam_vregion_put(mlxsw_sp, vchunk->vregion);
 kfree(vchunk);
}
