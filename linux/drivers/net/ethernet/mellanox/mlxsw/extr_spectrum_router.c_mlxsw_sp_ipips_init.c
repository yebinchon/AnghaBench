
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp {TYPE_1__* router; } ;
struct TYPE_2__ {int ipip_list; int ipip_ops_arr; } ;


 int INIT_LIST_HEAD (int *) ;
 int mlxsw_sp_ipip_config_tigcr (struct mlxsw_sp*) ;
 int mlxsw_sp_ipip_ops_arr ;

__attribute__((used)) static int mlxsw_sp_ipips_init(struct mlxsw_sp *mlxsw_sp)
{
 mlxsw_sp->router->ipip_ops_arr = mlxsw_sp_ipip_ops_arr;
 INIT_LIST_HEAD(&mlxsw_sp->router->ipip_list);
 return mlxsw_sp_ipip_config_tigcr(mlxsw_sp);
}
