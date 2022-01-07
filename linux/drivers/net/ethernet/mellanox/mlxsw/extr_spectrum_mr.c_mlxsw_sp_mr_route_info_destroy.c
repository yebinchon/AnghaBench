
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_mr_route_info {int erif_indices; } ;


 int kfree (int ) ;

__attribute__((used)) static void
mlxsw_sp_mr_route_info_destroy(struct mlxsw_sp_mr_route_info *route_info)
{
 kfree(route_info->erif_indices);
}
