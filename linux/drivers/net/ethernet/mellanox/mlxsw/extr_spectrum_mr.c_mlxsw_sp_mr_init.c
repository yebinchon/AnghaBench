
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_mr_ops {int (* init ) (struct mlxsw_sp*,int ) ;scalar_t__ priv_size; } ;
struct mlxsw_sp_mr {int stats_update_dw; int priv; int table_list; struct mlxsw_sp_mr_ops const* mr_ops; } ;
struct mlxsw_sp {struct mlxsw_sp_mr* mr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int MLXSW_SP_MR_ROUTES_COUNTER_UPDATE_INTERVAL ;
 int kfree (struct mlxsw_sp_mr*) ;
 struct mlxsw_sp_mr* kzalloc (scalar_t__,int ) ;
 int mlxsw_core_schedule_dw (int *,unsigned long) ;
 int mlxsw_sp_mr_stats_update ;
 unsigned long msecs_to_jiffies (int ) ;
 int stub1 (struct mlxsw_sp*,int ) ;

int mlxsw_sp_mr_init(struct mlxsw_sp *mlxsw_sp,
       const struct mlxsw_sp_mr_ops *mr_ops)
{
 struct mlxsw_sp_mr *mr;
 unsigned long interval;
 int err;

 mr = kzalloc(sizeof(*mr) + mr_ops->priv_size, GFP_KERNEL);
 if (!mr)
  return -ENOMEM;
 mr->mr_ops = mr_ops;
 mlxsw_sp->mr = mr;
 INIT_LIST_HEAD(&mr->table_list);

 err = mr_ops->init(mlxsw_sp, mr->priv);
 if (err)
  goto err;


 INIT_DELAYED_WORK(&mr->stats_update_dw, mlxsw_sp_mr_stats_update);
 interval = msecs_to_jiffies(MLXSW_SP_MR_ROUTES_COUNTER_UPDATE_INTERVAL);
 mlxsw_core_schedule_dw(&mr->stats_update_dw, interval);
 return 0;
err:
 kfree(mr);
 return err;
}
