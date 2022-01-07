
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void objagg_hints ;
struct mlxsw_sp_acl_erp_table {int objagg_lock; int objagg; } ;
struct mlxsw_sp_acl_atcam_region {TYPE_2__* region; struct mlxsw_sp_acl_erp_table* erp_table; } ;
struct mlxsw_sp {TYPE_1__* bus_info; } ;
struct TYPE_4__ {struct mlxsw_sp* mlxsw_sp; } ;
struct TYPE_3__ {int dev; } ;


 int EAGAIN ;
 void* ERR_CAST (void*) ;
 void* ERR_PTR (int) ;
 scalar_t__ IS_ERR (void*) ;
 int OBJAGG_OPT_ALGO_SIMPLE_GREEDY ;
 int dev_err_ratelimited (int ,char*) ;
 int mlxsw_sp_acl_erp_hints_check (struct mlxsw_sp*,struct mlxsw_sp_acl_atcam_region*,void*,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 void* objagg_hints_get (int ,int ) ;
 int objagg_hints_put (void*) ;

void *
mlxsw_sp_acl_erp_rehash_hints_get(struct mlxsw_sp_acl_atcam_region *aregion)
{
 struct mlxsw_sp_acl_erp_table *erp_table = aregion->erp_table;
 struct mlxsw_sp *mlxsw_sp = aregion->region->mlxsw_sp;
 struct objagg_hints *hints;
 bool rehash_needed;
 int err;

 mutex_lock(&erp_table->objagg_lock);
 hints = objagg_hints_get(erp_table->objagg,
     OBJAGG_OPT_ALGO_SIMPLE_GREEDY);
 mutex_unlock(&erp_table->objagg_lock);
 if (IS_ERR(hints)) {
  dev_err_ratelimited(mlxsw_sp->bus_info->dev, "Failed to create ERP hints\n");
  return ERR_CAST(hints);
 }
 err = mlxsw_sp_acl_erp_hints_check(mlxsw_sp, aregion, hints,
        &rehash_needed);
 if (err)
  goto errout;

 if (!rehash_needed) {
  err = -EAGAIN;
  goto errout;
 }
 return hints;

errout:
 objagg_hints_put(hints);
 return ERR_PTR(err);
}
