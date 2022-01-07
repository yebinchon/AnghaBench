
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_mr_tcam_route {int erif_list; int counter_index; int afa_block; int priv; int key; } ;
struct mlxsw_sp_mr_tcam_ops {int (* route_destroy ) (struct mlxsw_sp*,int ,int ,int *) ;} ;
struct mlxsw_sp_mr_tcam {int priv; } ;
struct mlxsw_sp {struct mlxsw_sp_mr_tcam_ops* mr_tcam_ops; } ;


 int kfree (int ) ;
 int mlxsw_sp_flow_counter_free (struct mlxsw_sp*,int ) ;
 int mlxsw_sp_mr_erif_list_flush (struct mlxsw_sp*,int *) ;
 int mlxsw_sp_mr_tcam_afa_block_destroy (int ) ;
 int stub1 (struct mlxsw_sp*,int ,int ,int *) ;

__attribute__((used)) static void mlxsw_sp_mr_tcam_route_destroy(struct mlxsw_sp *mlxsw_sp,
        void *priv, void *route_priv)
{
 const struct mlxsw_sp_mr_tcam_ops *ops = mlxsw_sp->mr_tcam_ops;
 struct mlxsw_sp_mr_tcam_route *route = route_priv;
 struct mlxsw_sp_mr_tcam *mr_tcam = priv;

 ops->route_destroy(mlxsw_sp, mr_tcam->priv, route->priv, &route->key);
 kfree(route->priv);
 mlxsw_sp_mr_tcam_afa_block_destroy(route->afa_block);
 mlxsw_sp_flow_counter_free(mlxsw_sp, route->counter_index);
 mlxsw_sp_mr_erif_list_flush(mlxsw_sp, &route->erif_list);
}
