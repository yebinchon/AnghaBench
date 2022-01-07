
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dw; } ;
struct mlxsw_sp_acl_tcam_vregion {int ref_count; int key_info; int region; int tlist; TYPE_2__ rehash; struct mlxsw_sp_acl_tcam_vgroup* vgroup; struct mlxsw_sp* mlxsw_sp; struct mlxsw_sp_acl_tcam* tcam; int lock; int vchunk_list; } ;
struct TYPE_3__ {struct mlxsw_sp_acl_tcam* tcam; } ;
struct mlxsw_sp_acl_tcam_vgroup {scalar_t__ vregion_rehash_enabled; TYPE_1__ group; } ;
struct mlxsw_sp_acl_tcam_ops {scalar_t__ region_rehash_hints_get; } ;
struct mlxsw_sp_acl_tcam {int lock; int vregion_list; } ;
struct mlxsw_sp {int acl; struct mlxsw_sp_acl_tcam_ops* acl_tcam_ops; } ;
struct mlxsw_afk_element_usage {int dummy; } ;
struct mlxsw_afk {int dummy; } ;


 int ENOMEM ;
 struct mlxsw_sp_acl_tcam_vregion* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int kfree (struct mlxsw_sp_acl_tcam_vregion*) ;
 struct mlxsw_sp_acl_tcam_vregion* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mlxsw_afk_key_info_get (struct mlxsw_afk*,struct mlxsw_afk_element_usage*) ;
 int mlxsw_afk_key_info_put (int ) ;
 struct mlxsw_afk* mlxsw_sp_acl_afk (int ) ;
 int mlxsw_sp_acl_tcam_region_create (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam*,struct mlxsw_sp_acl_tcam_vregion*,int *) ;
 int mlxsw_sp_acl_tcam_region_destroy (struct mlxsw_sp*,int ) ;
 int mlxsw_sp_acl_tcam_vgroup_vregion_attach (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_vgroup*,struct mlxsw_sp_acl_tcam_vregion*,unsigned int) ;
 int mlxsw_sp_acl_tcam_vregion_rehash_work ;
 int mlxsw_sp_acl_tcam_vregion_rehash_work_schedule (struct mlxsw_sp_acl_tcam_vregion*) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct mlxsw_sp_acl_tcam_vregion *
mlxsw_sp_acl_tcam_vregion_create(struct mlxsw_sp *mlxsw_sp,
     struct mlxsw_sp_acl_tcam_vgroup *vgroup,
     unsigned int priority,
     struct mlxsw_afk_element_usage *elusage)
{
 const struct mlxsw_sp_acl_tcam_ops *ops = mlxsw_sp->acl_tcam_ops;
 struct mlxsw_afk *afk = mlxsw_sp_acl_afk(mlxsw_sp->acl);
 struct mlxsw_sp_acl_tcam *tcam = vgroup->group.tcam;
 struct mlxsw_sp_acl_tcam_vregion *vregion;
 int err;

 vregion = kzalloc(sizeof(*vregion), GFP_KERNEL);
 if (!vregion)
  return ERR_PTR(-ENOMEM);
 INIT_LIST_HEAD(&vregion->vchunk_list);
 mutex_init(&vregion->lock);
 vregion->tcam = tcam;
 vregion->mlxsw_sp = mlxsw_sp;
 vregion->vgroup = vgroup;
 vregion->ref_count = 1;

 vregion->key_info = mlxsw_afk_key_info_get(afk, elusage);
 if (IS_ERR(vregion->key_info)) {
  err = PTR_ERR(vregion->key_info);
  goto err_key_info_get;
 }

 vregion->region = mlxsw_sp_acl_tcam_region_create(mlxsw_sp, tcam,
         vregion, ((void*)0));
 if (IS_ERR(vregion->region)) {
  err = PTR_ERR(vregion->region);
  goto err_region_create;
 }

 err = mlxsw_sp_acl_tcam_vgroup_vregion_attach(mlxsw_sp, vgroup, vregion,
            priority);
 if (err)
  goto err_vgroup_vregion_attach;

 if (vgroup->vregion_rehash_enabled && ops->region_rehash_hints_get) {

  INIT_DELAYED_WORK(&vregion->rehash.dw,
      mlxsw_sp_acl_tcam_vregion_rehash_work);
  mlxsw_sp_acl_tcam_vregion_rehash_work_schedule(vregion);
  mutex_lock(&tcam->lock);
  list_add_tail(&vregion->tlist, &tcam->vregion_list);
  mutex_unlock(&tcam->lock);
 }

 return vregion;

err_vgroup_vregion_attach:
 mlxsw_sp_acl_tcam_region_destroy(mlxsw_sp, vregion->region);
err_region_create:
 mlxsw_afk_key_info_put(vregion->key_info);
err_key_info_get:
 kfree(vregion);
 return ERR_PTR(err);
}
