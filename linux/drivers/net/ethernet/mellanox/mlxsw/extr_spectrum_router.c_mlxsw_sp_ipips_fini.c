
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp {TYPE_1__* router; } ;
struct TYPE_2__ {int ipip_list; } ;


 int WARN_ON (int) ;
 int list_empty (int *) ;

__attribute__((used)) static void mlxsw_sp_ipips_fini(struct mlxsw_sp *mlxsw_sp)
{
 WARN_ON(!list_empty(&mlxsw_sp->router->ipip_list));
}
