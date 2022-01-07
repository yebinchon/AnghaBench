
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vif_node; } ;
struct mlxsw_sp_mr_route {TYPE_1__ ivif; } ;


 int list_del (int *) ;

__attribute__((used)) static void mlxsw_sp_mr_route_ivif_unlink(struct mlxsw_sp_mr_route *mr_route)
{
 list_del(&mr_route->ivif.vif_node);
}
