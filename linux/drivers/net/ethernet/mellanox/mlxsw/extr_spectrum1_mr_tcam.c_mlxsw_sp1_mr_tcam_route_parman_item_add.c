
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_mr_route_key {int proto; } ;
struct mlxsw_sp1_mr_tcam_route {int * parman_prio; int parman_item; } ;
struct mlxsw_sp1_mr_tcam_region {int * parman_prios; int parman; } ;
struct mlxsw_sp1_mr_tcam {int dummy; } ;
typedef enum mlxsw_sp_mr_route_prio { ____Placeholder_mlxsw_sp_mr_route_prio } mlxsw_sp_mr_route_prio ;


 struct mlxsw_sp1_mr_tcam_region* mlxsw_sp1_mr_tcam_protocol_region (struct mlxsw_sp1_mr_tcam*,int ) ;
 int parman_item_add (int ,int *,int *) ;

__attribute__((used)) static int
mlxsw_sp1_mr_tcam_route_parman_item_add(struct mlxsw_sp1_mr_tcam *mr_tcam,
     struct mlxsw_sp1_mr_tcam_route *route,
     struct mlxsw_sp_mr_route_key *key,
     enum mlxsw_sp_mr_route_prio prio)
{
 struct mlxsw_sp1_mr_tcam_region *tcam_region;
 int err;

 tcam_region = mlxsw_sp1_mr_tcam_protocol_region(mr_tcam, key->proto);
 err = parman_item_add(tcam_region->parman,
         &tcam_region->parman_prios[prio],
         &route->parman_item);
 if (err)
  return err;

 route->parman_prio = &tcam_region->parman_prios[prio];
 return 0;
}
