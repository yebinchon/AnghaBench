
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_mr_table {int route_ht; int catchall_route_priv; int node; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp_mr {int priv; TYPE_1__* mr_ops; } ;
struct mlxsw_sp {struct mlxsw_sp_mr* mr; } ;
struct TYPE_2__ {int (* route_destroy ) (struct mlxsw_sp*,int ,int *) ;} ;


 int WARN_ON (int) ;
 int kfree (struct mlxsw_sp_mr_table*) ;
 int list_del (int *) ;
 int mlxsw_sp_mr_table_empty (struct mlxsw_sp_mr_table*) ;
 int rhashtable_destroy (int *) ;
 int stub1 (struct mlxsw_sp*,int ,int *) ;

void mlxsw_sp_mr_table_destroy(struct mlxsw_sp_mr_table *mr_table)
{
 struct mlxsw_sp *mlxsw_sp = mr_table->mlxsw_sp;
 struct mlxsw_sp_mr *mr = mlxsw_sp->mr;

 WARN_ON(!mlxsw_sp_mr_table_empty(mr_table));
 list_del(&mr_table->node);
 mr->mr_ops->route_destroy(mlxsw_sp, mr->priv,
      &mr_table->catchall_route_priv);
 rhashtable_destroy(&mr_table->route_ht);
 kfree(mr_table);
}
