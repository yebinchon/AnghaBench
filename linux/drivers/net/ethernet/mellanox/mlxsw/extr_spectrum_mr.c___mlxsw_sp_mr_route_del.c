
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_mr_table {int route_ht; } ;
struct mlxsw_sp_mr_route {int node; int ht_node; } ;


 int list_del (int *) ;
 int mlxsw_sp_mr_mfc_offload_set (struct mlxsw_sp_mr_route*,int) ;
 int mlxsw_sp_mr_route_destroy (struct mlxsw_sp_mr_table*,struct mlxsw_sp_mr_route*) ;
 int mlxsw_sp_mr_route_erase (struct mlxsw_sp_mr_table*,struct mlxsw_sp_mr_route*) ;
 int mlxsw_sp_mr_route_ht_params ;
 int rhashtable_remove_fast (int *,int *,int ) ;

__attribute__((used)) static void __mlxsw_sp_mr_route_del(struct mlxsw_sp_mr_table *mr_table,
        struct mlxsw_sp_mr_route *mr_route)
{
 mlxsw_sp_mr_mfc_offload_set(mr_route, 0);
 mlxsw_sp_mr_route_erase(mr_table, mr_route);
 rhashtable_remove_fast(&mr_table->route_ht, &mr_route->ht_node,
          mlxsw_sp_mr_route_ht_params);
 list_del(&mr_route->node);
 mlxsw_sp_mr_route_destroy(mr_table, mr_route);
}
