
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_mr_tcam_route {int action; struct mlxsw_afa_block* afa_block; int key; int priv; int erif_list; int min_mtu; int counter_index; int irif_index; } ;
struct mlxsw_sp_mr_tcam_ops {int (* route_update ) (struct mlxsw_sp*,int ,int *,struct mlxsw_afa_block*) ;} ;
struct mlxsw_sp {struct mlxsw_sp_mr_tcam_ops* mr_tcam_ops; } ;
struct mlxsw_afa_block {int dummy; } ;
typedef enum mlxsw_sp_mr_route_action { ____Placeholder_mlxsw_sp_mr_route_action } mlxsw_sp_mr_route_action ;


 scalar_t__ IS_ERR (struct mlxsw_afa_block*) ;
 int PTR_ERR (struct mlxsw_afa_block*) ;
 struct mlxsw_afa_block* mlxsw_sp_mr_tcam_afa_block_create (struct mlxsw_sp*,int,int ,int ,int ,int *) ;
 int mlxsw_sp_mr_tcam_afa_block_destroy (struct mlxsw_afa_block*) ;
 int stub1 (struct mlxsw_sp*,int ,int *,struct mlxsw_afa_block*) ;

__attribute__((used)) static int
mlxsw_sp_mr_tcam_route_action_update(struct mlxsw_sp *mlxsw_sp,
         void *route_priv,
         enum mlxsw_sp_mr_route_action route_action)
{
 const struct mlxsw_sp_mr_tcam_ops *ops = mlxsw_sp->mr_tcam_ops;
 struct mlxsw_sp_mr_tcam_route *route = route_priv;
 struct mlxsw_afa_block *afa_block;
 int err;


 afa_block = mlxsw_sp_mr_tcam_afa_block_create(mlxsw_sp, route_action,
            route->irif_index,
            route->counter_index,
            route->min_mtu,
            &route->erif_list);
 if (IS_ERR(afa_block))
  return PTR_ERR(afa_block);


 err = ops->route_update(mlxsw_sp, route->priv, &route->key, afa_block);
 if (err)
  goto err;


 mlxsw_sp_mr_tcam_afa_block_destroy(route->afa_block);
 route->afa_block = afa_block;
 route->action = route_action;
 return 0;
err:
 mlxsw_sp_mr_tcam_afa_block_destroy(afa_block);
 return err;
}
