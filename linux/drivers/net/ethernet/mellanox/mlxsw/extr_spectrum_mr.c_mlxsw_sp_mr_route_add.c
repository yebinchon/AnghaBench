
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mr_mfc {int dummy; } ;
struct mlxsw_sp_mr_table {int route_ht; int route_list; TYPE_3__* mlxsw_sp; TYPE_1__* ops; } ;
struct mlxsw_sp_mr_route {int node; int ht_node; int route_priv; int key; } ;
struct TYPE_6__ {TYPE_2__* bus_info; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int (* is_route_valid ) (struct mlxsw_sp_mr_table*,struct mr_mfc*) ;} ;


 int EINVAL ;
 int ENOENT ;
 scalar_t__ IS_ERR (struct mlxsw_sp_mr_route*) ;
 int PTR_ERR (struct mlxsw_sp_mr_route*) ;
 scalar_t__ WARN_ON (int) ;
 int dev_warn (int ,char*) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int mlxsw_sp_mr_mfc_offload_update (struct mlxsw_sp_mr_route*) ;
 struct mlxsw_sp_mr_route* mlxsw_sp_mr_route_create (struct mlxsw_sp_mr_table*,struct mr_mfc*) ;
 int mlxsw_sp_mr_route_destroy (struct mlxsw_sp_mr_table*,struct mlxsw_sp_mr_route*) ;
 int mlxsw_sp_mr_route_ht_params ;
 int mlxsw_sp_mr_route_write (struct mlxsw_sp_mr_table*,struct mlxsw_sp_mr_route*,int) ;
 int rhashtable_insert_fast (int *,int *,int ) ;
 struct mlxsw_sp_mr_route* rhashtable_lookup_fast (int *,int *,int ) ;
 int rhashtable_remove_fast (int *,int *,int ) ;
 int stub1 (struct mlxsw_sp_mr_table*,struct mr_mfc*) ;

int mlxsw_sp_mr_route_add(struct mlxsw_sp_mr_table *mr_table,
     struct mr_mfc *mfc, bool replace)
{
 struct mlxsw_sp_mr_route *mr_orig_route = ((void*)0);
 struct mlxsw_sp_mr_route *mr_route;
 int err;

 if (!mr_table->ops->is_route_valid(mr_table, mfc))
  return -EINVAL;


 mr_route = mlxsw_sp_mr_route_create(mr_table, mfc);
 if (IS_ERR(mr_route))
  return PTR_ERR(mr_route);


 mr_orig_route = rhashtable_lookup_fast(&mr_table->route_ht,
            &mr_route->key,
            mlxsw_sp_mr_route_ht_params);
 if (replace) {


  if (WARN_ON(!mr_orig_route)) {
   err = -ENOENT;
   goto err_no_orig_route;
  }
  mr_route->route_priv = mr_orig_route->route_priv;
 } else if (mr_orig_route) {



  dev_warn(mr_table->mlxsw_sp->bus_info->dev,
    "Offloading proxy routes is not supported.\n");
  err = -EINVAL;
  goto err_duplicate_route;
 }


 list_add_tail(&mr_route->node, &mr_table->route_list);
 err = rhashtable_insert_fast(&mr_table->route_ht,
         &mr_route->ht_node,
         mlxsw_sp_mr_route_ht_params);
 if (err)
  goto err_rhashtable_insert;


 err = mlxsw_sp_mr_route_write(mr_table, mr_route, replace);
 if (err)
  goto err_mr_route_write;


 if (replace) {
  rhashtable_remove_fast(&mr_table->route_ht,
           &mr_orig_route->ht_node,
           mlxsw_sp_mr_route_ht_params);
  list_del(&mr_orig_route->node);
  mlxsw_sp_mr_route_destroy(mr_table, mr_orig_route);
 }

 mlxsw_sp_mr_mfc_offload_update(mr_route);
 return 0;

err_mr_route_write:
 rhashtable_remove_fast(&mr_table->route_ht, &mr_route->ht_node,
          mlxsw_sp_mr_route_ht_params);
err_rhashtable_insert:
 list_del(&mr_route->node);
err_no_orig_route:
err_duplicate_route:
 mlxsw_sp_mr_route_destroy(mr_table, mr_route);
 return err;
}
