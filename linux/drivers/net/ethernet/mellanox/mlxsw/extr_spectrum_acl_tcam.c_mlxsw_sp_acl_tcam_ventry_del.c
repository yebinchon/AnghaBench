
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_tcam_vregion {int lock; } ;
struct mlxsw_sp_acl_tcam_ventry {int entry; int list; struct mlxsw_sp_acl_tcam_vchunk* vchunk; } ;
struct mlxsw_sp_acl_tcam_vchunk {struct mlxsw_sp_acl_tcam_vregion* vregion; } ;
struct mlxsw_sp {int dummy; } ;


 int list_del (int *) ;
 int mlxsw_sp_acl_tcam_entry_destroy (struct mlxsw_sp*,int ) ;
 int mlxsw_sp_acl_tcam_rehash_ctx_vchunk_changed (struct mlxsw_sp_acl_tcam_vchunk*) ;
 int mlxsw_sp_acl_tcam_vchunk_put (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_vchunk*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void mlxsw_sp_acl_tcam_ventry_del(struct mlxsw_sp *mlxsw_sp,
      struct mlxsw_sp_acl_tcam_ventry *ventry)
{
 struct mlxsw_sp_acl_tcam_vchunk *vchunk = ventry->vchunk;
 struct mlxsw_sp_acl_tcam_vregion *vregion = vchunk->vregion;

 mutex_lock(&vregion->lock);
 mlxsw_sp_acl_tcam_rehash_ctx_vchunk_changed(vchunk);
 list_del(&ventry->list);
 mlxsw_sp_acl_tcam_entry_destroy(mlxsw_sp, ventry->entry);
 mutex_unlock(&vregion->lock);
 mlxsw_sp_acl_tcam_vchunk_put(mlxsw_sp, vchunk);
}
