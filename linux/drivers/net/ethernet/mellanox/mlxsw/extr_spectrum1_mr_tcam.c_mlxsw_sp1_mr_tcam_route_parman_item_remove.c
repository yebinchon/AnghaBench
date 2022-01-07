
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_mr_route_key {int proto; } ;
struct mlxsw_sp1_mr_tcam_route {int parman_item; int parman_prio; } ;
struct mlxsw_sp1_mr_tcam_region {int parman; } ;
struct mlxsw_sp1_mr_tcam {int dummy; } ;


 struct mlxsw_sp1_mr_tcam_region* mlxsw_sp1_mr_tcam_protocol_region (struct mlxsw_sp1_mr_tcam*,int ) ;
 int parman_item_remove (int ,int ,int *) ;

__attribute__((used)) static void
mlxsw_sp1_mr_tcam_route_parman_item_remove(struct mlxsw_sp1_mr_tcam *mr_tcam,
        struct mlxsw_sp1_mr_tcam_route *route,
        struct mlxsw_sp_mr_route_key *key)
{
 struct mlxsw_sp1_mr_tcam_region *tcam_region;

 tcam_region = mlxsw_sp1_mr_tcam_protocol_region(mr_tcam, key->proto);
 parman_item_remove(tcam_region->parman,
      route->parman_prio, &route->parman_item);
}
