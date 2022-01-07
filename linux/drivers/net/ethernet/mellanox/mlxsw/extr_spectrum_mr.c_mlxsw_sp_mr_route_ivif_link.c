
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_mr_vif {int route_ivif_list; } ;
struct TYPE_2__ {int vif_node; struct mlxsw_sp_mr_vif* mr_vif; struct mlxsw_sp_mr_route* mr_route; } ;
struct mlxsw_sp_mr_route {TYPE_1__ ivif; } ;


 int list_add_tail (int *,int *) ;

__attribute__((used)) static void mlxsw_sp_mr_route_ivif_link(struct mlxsw_sp_mr_route *mr_route,
     struct mlxsw_sp_mr_vif *mr_vif)
{
 mr_route->ivif.mr_route = mr_route;
 mr_route->ivif.mr_vif = mr_vif;
 list_add_tail(&mr_route->ivif.vif_node, &mr_vif->route_ivif_list);
}
