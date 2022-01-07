
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_rif {int nexthop_list; } ;
struct mlxsw_sp_nexthop {int rif_list_node; struct mlxsw_sp_rif* rif; } ;


 int list_add (int *,int *) ;

__attribute__((used)) static void mlxsw_sp_nexthop_rif_init(struct mlxsw_sp_nexthop *nh,
          struct mlxsw_sp_rif *rif)
{
 if (nh->rif)
  return;

 nh->rif = rif;
 list_add(&nh->rif_list_node, &rif->nexthop_list);
}
