
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_mr_vif {int route_evif_list; } ;
struct mlxsw_sp_mr_route_vif_entry {int vif_node; int route_node; struct mlxsw_sp_mr_vif* mr_vif; struct mlxsw_sp_mr_route* mr_route; } ;
struct mlxsw_sp_mr_route {int evif_list; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct mlxsw_sp_mr_route_vif_entry* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static int mlxsw_sp_mr_route_evif_link(struct mlxsw_sp_mr_route *mr_route,
           struct mlxsw_sp_mr_vif *mr_vif)
{
 struct mlxsw_sp_mr_route_vif_entry *rve;

 rve = kzalloc(sizeof(*rve), GFP_KERNEL);
 if (!rve)
  return -ENOMEM;
 rve->mr_route = mr_route;
 rve->mr_vif = mr_vif;
 list_add_tail(&rve->route_node, &mr_route->evif_list);
 list_add_tail(&rve->vif_node, &mr_vif->route_evif_list);
 return 0;
}
