
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_fid {int dummy; } ;
struct TYPE_2__ {int dw; int interval; } ;
struct mlxsw_sp_acl {int afk; int ruleset_ht; TYPE_1__ rule_activity_update; int tcam; int rules; struct mlxsw_sp_fid* dummy_fid; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int afk_ops; int core; struct mlxsw_sp_acl* acl; } ;


 int ACL_FLEX_KEYS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct mlxsw_sp_fid*) ;
 int MLXSW_CORE_RES_GET (int ,int ) ;
 int MLXSW_SP_ACL_RULE_ACTIVITY_UPDATE_PERIOD_MS ;
 int PTR_ERR (struct mlxsw_sp_fid*) ;
 int kfree (struct mlxsw_sp_acl*) ;
 struct mlxsw_sp_acl* kzalloc (size_t,int ) ;
 int mlxsw_afk_create (int ,int ) ;
 int mlxsw_afk_destroy (int ) ;
 int mlxsw_core_schedule_dw (int *,int ) ;
 int mlxsw_sp_acl_rule_activity_update_work ;
 int mlxsw_sp_acl_ruleset_ht_params ;
 int mlxsw_sp_acl_tcam_init (struct mlxsw_sp*,int *) ;
 int mlxsw_sp_acl_tcam_priv_size (struct mlxsw_sp*) ;
 struct mlxsw_sp_fid* mlxsw_sp_fid_dummy_get (struct mlxsw_sp*) ;
 int mlxsw_sp_fid_put (struct mlxsw_sp_fid*) ;
 int rhashtable_destroy (int *) ;
 int rhashtable_init (int *,int *) ;

int mlxsw_sp_acl_init(struct mlxsw_sp *mlxsw_sp)
{
 struct mlxsw_sp_fid *fid;
 struct mlxsw_sp_acl *acl;
 size_t alloc_size;
 int err;

 alloc_size = sizeof(*acl) + mlxsw_sp_acl_tcam_priv_size(mlxsw_sp);
 acl = kzalloc(alloc_size, GFP_KERNEL);
 if (!acl)
  return -ENOMEM;
 mlxsw_sp->acl = acl;
 acl->mlxsw_sp = mlxsw_sp;
 acl->afk = mlxsw_afk_create(MLXSW_CORE_RES_GET(mlxsw_sp->core,
             ACL_FLEX_KEYS),
        mlxsw_sp->afk_ops);
 if (!acl->afk) {
  err = -ENOMEM;
  goto err_afk_create;
 }

 err = rhashtable_init(&acl->ruleset_ht,
         &mlxsw_sp_acl_ruleset_ht_params);
 if (err)
  goto err_rhashtable_init;

 fid = mlxsw_sp_fid_dummy_get(mlxsw_sp);
 if (IS_ERR(fid)) {
  err = PTR_ERR(fid);
  goto err_fid_get;
 }
 acl->dummy_fid = fid;

 INIT_LIST_HEAD(&acl->rules);
 err = mlxsw_sp_acl_tcam_init(mlxsw_sp, &acl->tcam);
 if (err)
  goto err_acl_ops_init;


 INIT_DELAYED_WORK(&acl->rule_activity_update.dw,
     mlxsw_sp_acl_rule_activity_update_work);
 acl->rule_activity_update.interval = MLXSW_SP_ACL_RULE_ACTIVITY_UPDATE_PERIOD_MS;
 mlxsw_core_schedule_dw(&acl->rule_activity_update.dw, 0);
 return 0;

err_acl_ops_init:
 mlxsw_sp_fid_put(fid);
err_fid_get:
 rhashtable_destroy(&acl->ruleset_ht);
err_rhashtable_init:
 mlxsw_afk_destroy(acl->afk);
err_afk_create:
 kfree(acl);
 return err;
}
