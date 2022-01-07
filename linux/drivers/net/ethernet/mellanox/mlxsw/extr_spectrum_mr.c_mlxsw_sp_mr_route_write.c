
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_mr_table {struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp_mr_route_info {int dummy; } ;
struct mlxsw_sp_mr_route_params {int prio; struct mlxsw_sp_mr_route_info value; int key; } ;
struct mlxsw_sp_mr_route {int route_priv; int key; } ;
struct mlxsw_sp_mr {TYPE_1__* mr_ops; int priv; } ;
struct mlxsw_sp {struct mlxsw_sp_mr* mr; } ;
struct TYPE_2__ {int (* route_create ) (struct mlxsw_sp*,int ,int ,struct mlxsw_sp_mr_route_params*) ;int (* route_update ) (struct mlxsw_sp*,int ,struct mlxsw_sp_mr_route_info*) ;int route_priv_size; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (int ) ;
 int kzalloc (int ,int ) ;
 int mlxsw_sp_mr_route_info_create (struct mlxsw_sp_mr_table*,struct mlxsw_sp_mr_route*,struct mlxsw_sp_mr_route_info*) ;
 int mlxsw_sp_mr_route_info_destroy (struct mlxsw_sp_mr_route_info*) ;
 int mlxsw_sp_mr_route_prio (struct mlxsw_sp_mr_route*) ;
 int stub1 (struct mlxsw_sp*,int ,int ,struct mlxsw_sp_mr_route_params*) ;
 int stub2 (struct mlxsw_sp*,int ,struct mlxsw_sp_mr_route_info*) ;

__attribute__((used)) static int mlxsw_sp_mr_route_write(struct mlxsw_sp_mr_table *mr_table,
       struct mlxsw_sp_mr_route *mr_route,
       bool replace)
{
 struct mlxsw_sp *mlxsw_sp = mr_table->mlxsw_sp;
 struct mlxsw_sp_mr_route_info route_info;
 struct mlxsw_sp_mr *mr = mlxsw_sp->mr;
 int err;

 err = mlxsw_sp_mr_route_info_create(mr_table, mr_route, &route_info);
 if (err)
  return err;

 if (!replace) {
  struct mlxsw_sp_mr_route_params route_params;

  mr_route->route_priv = kzalloc(mr->mr_ops->route_priv_size,
            GFP_KERNEL);
  if (!mr_route->route_priv) {
   err = -ENOMEM;
   goto out;
  }

  route_params.key = mr_route->key;
  route_params.value = route_info;
  route_params.prio = mlxsw_sp_mr_route_prio(mr_route);
  err = mr->mr_ops->route_create(mlxsw_sp, mr->priv,
            mr_route->route_priv,
            &route_params);
  if (err)
   kfree(mr_route->route_priv);
 } else {
  err = mr->mr_ops->route_update(mlxsw_sp, mr_route->route_priv,
            &route_info);
 }
out:
 mlxsw_sp_mr_route_info_destroy(&route_info);
 return err;
}
