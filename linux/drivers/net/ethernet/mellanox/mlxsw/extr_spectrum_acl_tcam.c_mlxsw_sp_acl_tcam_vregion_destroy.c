
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dw; } ;
struct mlxsw_sp_acl_tcam_vregion {int lock; int key_info; scalar_t__ region; scalar_t__ region2; TYPE_1__ rehash; int tlist; struct mlxsw_sp_acl_tcam* tcam; struct mlxsw_sp_acl_tcam_vgroup* vgroup; } ;
struct mlxsw_sp_acl_tcam_vgroup {scalar_t__ vregion_rehash_enabled; } ;
struct mlxsw_sp_acl_tcam_ops {scalar_t__ region_rehash_hints_get; } ;
struct mlxsw_sp_acl_tcam {int lock; } ;
struct mlxsw_sp {struct mlxsw_sp_acl_tcam_ops* acl_tcam_ops; } ;


 int cancel_delayed_work_sync (int *) ;
 int kfree (struct mlxsw_sp_acl_tcam_vregion*) ;
 int list_del (int *) ;
 int mlxsw_afk_key_info_put (int ) ;
 int mlxsw_sp_acl_tcam_region_destroy (struct mlxsw_sp*,scalar_t__) ;
 int mlxsw_sp_acl_tcam_vgroup_vregion_detach (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_vregion*) ;
 int mutex_destroy (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void
mlxsw_sp_acl_tcam_vregion_destroy(struct mlxsw_sp *mlxsw_sp,
      struct mlxsw_sp_acl_tcam_vregion *vregion)
{
 const struct mlxsw_sp_acl_tcam_ops *ops = mlxsw_sp->acl_tcam_ops;
 struct mlxsw_sp_acl_tcam_vgroup *vgroup = vregion->vgroup;
 struct mlxsw_sp_acl_tcam *tcam = vregion->tcam;

 if (vgroup->vregion_rehash_enabled && ops->region_rehash_hints_get) {
  mutex_lock(&tcam->lock);
  list_del(&vregion->tlist);
  mutex_unlock(&tcam->lock);
  cancel_delayed_work_sync(&vregion->rehash.dw);
 }
 mlxsw_sp_acl_tcam_vgroup_vregion_detach(mlxsw_sp, vregion);
 if (vregion->region2)
  mlxsw_sp_acl_tcam_region_destroy(mlxsw_sp, vregion->region2);
 mlxsw_sp_acl_tcam_region_destroy(mlxsw_sp, vregion->region);
 mlxsw_afk_key_info_put(vregion->key_info);
 mutex_destroy(&vregion->lock);
 kfree(vregion);
}
