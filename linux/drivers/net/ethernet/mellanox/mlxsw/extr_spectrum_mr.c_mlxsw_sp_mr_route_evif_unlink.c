
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_mr_route_vif_entry {int vif_node; int route_node; } ;


 int kfree (struct mlxsw_sp_mr_route_vif_entry*) ;
 int list_del (int *) ;

__attribute__((used)) static void
mlxsw_sp_mr_route_evif_unlink(struct mlxsw_sp_mr_route_vif_entry *rve)
{
 list_del(&rve->route_node);
 list_del(&rve->vif_node);
 kfree(rve);
}
