
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_tcam_vregion {int lock; int vchunk_list; int region; } ;
struct mlxsw_sp_acl_tcam_vgroup {int vchunk_ht; } ;
struct mlxsw_sp_acl_tcam_vchunk {unsigned int priority; int ref_count; int ht_node; int list; struct mlxsw_sp_acl_tcam_vregion* chunk; struct mlxsw_sp_acl_tcam_vregion* vregion; struct mlxsw_sp_acl_tcam_vgroup* vgroup; int ventry_list; } ;
struct mlxsw_sp {int dummy; } ;
struct mlxsw_afk_element_usage {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 struct mlxsw_sp_acl_tcam_vchunk* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct mlxsw_sp_acl_tcam_vregion*) ;
 unsigned int MLXSW_SP_ACL_TCAM_CATCHALL_PRIO ;
 int PTR_ERR (struct mlxsw_sp_acl_tcam_vregion*) ;
 int kfree (struct mlxsw_sp_acl_tcam_vchunk*) ;
 struct mlxsw_sp_acl_tcam_vchunk* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 struct mlxsw_sp_acl_tcam_vregion* mlxsw_sp_acl_tcam_chunk_create (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_vchunk*,int ) ;
 int mlxsw_sp_acl_tcam_rehash_ctx_vregion_changed (struct mlxsw_sp_acl_tcam_vregion*) ;
 int mlxsw_sp_acl_tcam_vchunk_ht_params ;
 struct mlxsw_sp_acl_tcam_vregion* mlxsw_sp_acl_tcam_vregion_get (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_vgroup*,unsigned int,struct mlxsw_afk_element_usage*) ;
 int mlxsw_sp_acl_tcam_vregion_put (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_vregion*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rhashtable_insert_fast (int *,int *,int ) ;
 int rhashtable_remove_fast (int *,int *,int ) ;

__attribute__((used)) static struct mlxsw_sp_acl_tcam_vchunk *
mlxsw_sp_acl_tcam_vchunk_create(struct mlxsw_sp *mlxsw_sp,
    struct mlxsw_sp_acl_tcam_vgroup *vgroup,
    unsigned int priority,
    struct mlxsw_afk_element_usage *elusage)
{
 struct mlxsw_sp_acl_tcam_vregion *vregion;
 struct mlxsw_sp_acl_tcam_vchunk *vchunk;
 int err;

 if (priority == MLXSW_SP_ACL_TCAM_CATCHALL_PRIO)
  return ERR_PTR(-EINVAL);

 vchunk = kzalloc(sizeof(*vchunk), GFP_KERNEL);
 if (!vchunk)
  return ERR_PTR(-ENOMEM);
 INIT_LIST_HEAD(&vchunk->ventry_list);
 vchunk->priority = priority;
 vchunk->vgroup = vgroup;
 vchunk->ref_count = 1;

 vregion = mlxsw_sp_acl_tcam_vregion_get(mlxsw_sp, vgroup,
      priority, elusage);
 if (IS_ERR(vregion)) {
  err = PTR_ERR(vregion);
  goto err_vregion_get;
 }

 vchunk->vregion = vregion;

 err = rhashtable_insert_fast(&vgroup->vchunk_ht, &vchunk->ht_node,
         mlxsw_sp_acl_tcam_vchunk_ht_params);
 if (err)
  goto err_rhashtable_insert;

 mutex_lock(&vregion->lock);
 vchunk->chunk = mlxsw_sp_acl_tcam_chunk_create(mlxsw_sp, vchunk,
             vchunk->vregion->region);
 if (IS_ERR(vchunk->chunk)) {
  mutex_unlock(&vregion->lock);
  err = PTR_ERR(vchunk->chunk);
  goto err_chunk_create;
 }

 mlxsw_sp_acl_tcam_rehash_ctx_vregion_changed(vregion);
 list_add_tail(&vchunk->list, &vregion->vchunk_list);
 mutex_unlock(&vregion->lock);

 return vchunk;

err_chunk_create:
 rhashtable_remove_fast(&vgroup->vchunk_ht, &vchunk->ht_node,
          mlxsw_sp_acl_tcam_vchunk_ht_params);
err_rhashtable_insert:
 mlxsw_sp_acl_tcam_vregion_put(mlxsw_sp, vregion);
err_vregion_get:
 kfree(vchunk);
 return ERR_PTR(err);
}
