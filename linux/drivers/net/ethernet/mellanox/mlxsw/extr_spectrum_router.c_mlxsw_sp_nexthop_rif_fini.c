
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_nexthop {int * rif; int rif_list_node; } ;


 int list_del (int *) ;

__attribute__((used)) static void mlxsw_sp_nexthop_rif_fini(struct mlxsw_sp_nexthop *nh)
{
 if (!nh->rif)
  return;

 list_del(&nh->rif_list_node);
 nh->rif = ((void*)0);
}
