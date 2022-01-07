
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct objagg_stats {scalar_t__ root_count; } ;
struct objagg_hints {int dummy; } ;
struct mlxsw_sp_acl_erp_table {int objagg_lock; int objagg; } ;
struct mlxsw_sp_acl_atcam_region {struct mlxsw_sp_acl_erp_table* erp_table; } ;
struct mlxsw_sp {TYPE_1__* bus_info; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ IS_ERR (struct objagg_stats const*) ;
 int PTR_ERR (struct objagg_stats const*) ;
 int dev_err_ratelimited (int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct objagg_stats* objagg_hints_stats_get (struct objagg_hints*) ;
 struct objagg_stats* objagg_stats_get (int ) ;
 int objagg_stats_put (struct objagg_stats const*) ;

__attribute__((used)) static int
mlxsw_sp_acl_erp_hints_check(struct mlxsw_sp *mlxsw_sp,
        struct mlxsw_sp_acl_atcam_region *aregion,
        struct objagg_hints *hints, bool *p_rehash_needed)
{
 struct mlxsw_sp_acl_erp_table *erp_table = aregion->erp_table;
 const struct objagg_stats *ostats;
 const struct objagg_stats *hstats;
 int err;

 *p_rehash_needed = 0;

 mutex_lock(&erp_table->objagg_lock);
 ostats = objagg_stats_get(erp_table->objagg);
 mutex_unlock(&erp_table->objagg_lock);
 if (IS_ERR(ostats)) {
  dev_err_ratelimited(mlxsw_sp->bus_info->dev, "Failed to get ERP stats\n");
  return PTR_ERR(ostats);
 }

 hstats = objagg_hints_stats_get(hints);
 if (IS_ERR(hstats)) {
  dev_err_ratelimited(mlxsw_sp->bus_info->dev, "Failed to get ERP hints stats\n");
  err = PTR_ERR(hstats);
  goto err_hints_stats_get;
 }


 if (hstats->root_count < ostats->root_count)
  *p_rehash_needed = 1;

 err = 0;

 objagg_stats_put(hstats);
err_hints_stats_get:
 objagg_stats_put(ostats);
 return err;
}
