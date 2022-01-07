
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_acl_tcam_vregion {int lock; } ;
struct mlxsw_sp_acl_tcam_vgroup {int dummy; } ;
struct mlxsw_sp_acl_tcam_ventry {int list; struct mlxsw_sp_acl_tcam_vchunk* entry; struct mlxsw_sp_acl_rule_info* rulei; struct mlxsw_sp_acl_tcam_vchunk* vchunk; } ;
struct mlxsw_sp_acl_tcam_vchunk {int ventry_list; int chunk; struct mlxsw_sp_acl_tcam_vregion* vregion; } ;
struct TYPE_2__ {int elusage; } ;
struct mlxsw_sp_acl_rule_info {TYPE_1__ values; int priority; } ;
struct mlxsw_sp {int dummy; } ;


 scalar_t__ IS_ERR (struct mlxsw_sp_acl_tcam_vchunk*) ;
 int PTR_ERR (struct mlxsw_sp_acl_tcam_vchunk*) ;
 int list_add_tail (int *,int *) ;
 struct mlxsw_sp_acl_tcam_vchunk* mlxsw_sp_acl_tcam_entry_create (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_ventry*,int ) ;
 int mlxsw_sp_acl_tcam_rehash_ctx_vchunk_changed (struct mlxsw_sp_acl_tcam_vchunk*) ;
 struct mlxsw_sp_acl_tcam_vchunk* mlxsw_sp_acl_tcam_vchunk_get (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_vgroup*,int ,int *) ;
 int mlxsw_sp_acl_tcam_vchunk_put (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_vchunk*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mlxsw_sp_acl_tcam_ventry_add(struct mlxsw_sp *mlxsw_sp,
     struct mlxsw_sp_acl_tcam_vgroup *vgroup,
     struct mlxsw_sp_acl_tcam_ventry *ventry,
     struct mlxsw_sp_acl_rule_info *rulei)
{
 struct mlxsw_sp_acl_tcam_vregion *vregion;
 struct mlxsw_sp_acl_tcam_vchunk *vchunk;
 int err;

 vchunk = mlxsw_sp_acl_tcam_vchunk_get(mlxsw_sp, vgroup, rulei->priority,
           &rulei->values.elusage);
 if (IS_ERR(vchunk))
  return PTR_ERR(vchunk);

 ventry->vchunk = vchunk;
 ventry->rulei = rulei;
 vregion = vchunk->vregion;

 mutex_lock(&vregion->lock);
 ventry->entry = mlxsw_sp_acl_tcam_entry_create(mlxsw_sp, ventry,
             vchunk->chunk);
 if (IS_ERR(ventry->entry)) {
  mutex_unlock(&vregion->lock);
  err = PTR_ERR(ventry->entry);
  goto err_entry_create;
 }

 list_add_tail(&ventry->list, &vchunk->ventry_list);
 mlxsw_sp_acl_tcam_rehash_ctx_vchunk_changed(vchunk);
 mutex_unlock(&vregion->lock);

 return 0;

err_entry_create:
 mlxsw_sp_acl_tcam_vchunk_put(mlxsw_sp, vchunk);
 return err;
}
