
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_mr_route_key {int dummy; } ;
struct mlxsw_sp1_mr_tcam_route {int parman_item; } ;
struct mlxsw_sp {int dummy; } ;
struct mlxsw_afa_block {int dummy; } ;


 int mlxsw_sp1_mr_tcam_route_replace (struct mlxsw_sp*,int *,struct mlxsw_sp_mr_route_key*,struct mlxsw_afa_block*) ;

__attribute__((used)) static int
mlxsw_sp1_mr_tcam_route_update(struct mlxsw_sp *mlxsw_sp,
          void *route_priv,
          struct mlxsw_sp_mr_route_key *key,
          struct mlxsw_afa_block *afa_block)
{
 struct mlxsw_sp1_mr_tcam_route *route = route_priv;

 return mlxsw_sp1_mr_tcam_route_replace(mlxsw_sp, &route->parman_item,
            key, afa_block);
}
