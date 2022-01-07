
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_mr_table {struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp_mr_route {int route_priv; } ;
struct mlxsw_sp_mr {int priv; TYPE_1__* mr_ops; } ;
struct mlxsw_sp {struct mlxsw_sp_mr* mr; } ;
struct TYPE_2__ {int (* route_destroy ) (struct mlxsw_sp*,int ,int ) ;} ;


 int kfree (int ) ;
 int stub1 (struct mlxsw_sp*,int ,int ) ;

__attribute__((used)) static void mlxsw_sp_mr_route_erase(struct mlxsw_sp_mr_table *mr_table,
        struct mlxsw_sp_mr_route *mr_route)
{
 struct mlxsw_sp *mlxsw_sp = mr_table->mlxsw_sp;
 struct mlxsw_sp_mr *mr = mlxsw_sp->mr;

 mr->mr_ops->route_destroy(mlxsw_sp, mr->priv, mr_route->route_priv);
 kfree(mr_route->route_priv);
}
