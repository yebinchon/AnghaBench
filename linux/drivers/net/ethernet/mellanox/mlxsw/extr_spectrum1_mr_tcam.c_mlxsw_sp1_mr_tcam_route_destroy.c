
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_mr_route_key {int dummy; } ;
struct mlxsw_sp1_mr_tcam_route {int parman_item; } ;
struct mlxsw_sp1_mr_tcam {int dummy; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp1_mr_tcam_route_parman_item_remove (struct mlxsw_sp1_mr_tcam*,struct mlxsw_sp1_mr_tcam_route*,struct mlxsw_sp_mr_route_key*) ;
 int mlxsw_sp1_mr_tcam_route_remove (struct mlxsw_sp*,int *,struct mlxsw_sp_mr_route_key*) ;

__attribute__((used)) static void
mlxsw_sp1_mr_tcam_route_destroy(struct mlxsw_sp *mlxsw_sp, void *priv,
    void *route_priv,
    struct mlxsw_sp_mr_route_key *key)
{
 struct mlxsw_sp1_mr_tcam_route *route = route_priv;
 struct mlxsw_sp1_mr_tcam *mr_tcam = priv;

 mlxsw_sp1_mr_tcam_route_remove(mlxsw_sp, &route->parman_item, key);
 mlxsw_sp1_mr_tcam_route_parman_item_remove(mr_tcam, route, key);
}
