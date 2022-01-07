
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_rif {size_t rif_index; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {TYPE_1__* router; } ;
struct TYPE_2__ {int ** rifs; } ;


 int kfree (struct mlxsw_sp_rif*) ;
 int mlxsw_sp_rif_ipip_lb_ul_rif_op (struct mlxsw_sp_rif*,int) ;

__attribute__((used)) static void mlxsw_sp_ul_rif_destroy(struct mlxsw_sp_rif *ul_rif)
{
 struct mlxsw_sp *mlxsw_sp = ul_rif->mlxsw_sp;

 mlxsw_sp_rif_ipip_lb_ul_rif_op(ul_rif, 0);
 mlxsw_sp->router->rifs[ul_rif->rif_index] = ((void*)0);
 kfree(ul_rif);
}
