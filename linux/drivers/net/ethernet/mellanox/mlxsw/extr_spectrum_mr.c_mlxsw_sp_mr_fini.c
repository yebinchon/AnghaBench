
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_mr {int priv; TYPE_1__* mr_ops; int stats_update_dw; } ;
struct mlxsw_sp {struct mlxsw_sp_mr* mr; } ;
struct TYPE_2__ {int (* fini ) (struct mlxsw_sp*,int ) ;} ;


 int cancel_delayed_work_sync (int *) ;
 int kfree (struct mlxsw_sp_mr*) ;
 int stub1 (struct mlxsw_sp*,int ) ;

void mlxsw_sp_mr_fini(struct mlxsw_sp *mlxsw_sp)
{
 struct mlxsw_sp_mr *mr = mlxsw_sp->mr;

 cancel_delayed_work_sync(&mr->stats_update_dw);
 mr->mr_ops->fini(mlxsw_sp, mr->priv);
 kfree(mr);
}
