
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dw; } ;
struct mlxsw_sp_acl {int afk; int ruleset_ht; int dummy_fid; int rules; int tcam; TYPE_1__ rule_activity_update; } ;
struct mlxsw_sp {struct mlxsw_sp_acl* acl; } ;


 int WARN_ON (int) ;
 int cancel_delayed_work_sync (int *) ;
 int kfree (struct mlxsw_sp_acl*) ;
 int list_empty (int *) ;
 int mlxsw_afk_destroy (int ) ;
 int mlxsw_sp_acl_tcam_fini (struct mlxsw_sp*,int *) ;
 int mlxsw_sp_fid_put (int ) ;
 int rhashtable_destroy (int *) ;

void mlxsw_sp_acl_fini(struct mlxsw_sp *mlxsw_sp)
{
 struct mlxsw_sp_acl *acl = mlxsw_sp->acl;

 cancel_delayed_work_sync(&mlxsw_sp->acl->rule_activity_update.dw);
 mlxsw_sp_acl_tcam_fini(mlxsw_sp, &acl->tcam);
 WARN_ON(!list_empty(&acl->rules));
 mlxsw_sp_fid_put(acl->dummy_fid);
 rhashtable_destroy(&acl->ruleset_ht);
 mlxsw_afk_destroy(acl->afk);
 kfree(acl);
}
