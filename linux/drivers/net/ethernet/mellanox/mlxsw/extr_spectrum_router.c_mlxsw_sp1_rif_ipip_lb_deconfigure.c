
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_vr {int rif_count; int id; } ;
struct mlxsw_sp_rif_ipip_lb {size_t ul_vr_id; } ;
struct mlxsw_sp_rif {struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {TYPE_1__* router; } ;
struct TYPE_2__ {struct mlxsw_sp_vr* vrs; } ;


 int mlxsw_sp_rif_ipip_lb_op (struct mlxsw_sp_rif_ipip_lb*,int ,int ,int) ;
 struct mlxsw_sp_rif_ipip_lb* mlxsw_sp_rif_ipip_lb_rif (struct mlxsw_sp_rif*) ;
 int mlxsw_sp_vr_put (struct mlxsw_sp*,struct mlxsw_sp_vr*) ;

__attribute__((used)) static void mlxsw_sp1_rif_ipip_lb_deconfigure(struct mlxsw_sp_rif *rif)
{
 struct mlxsw_sp_rif_ipip_lb *lb_rif = mlxsw_sp_rif_ipip_lb_rif(rif);
 struct mlxsw_sp *mlxsw_sp = rif->mlxsw_sp;
 struct mlxsw_sp_vr *ul_vr;

 ul_vr = &mlxsw_sp->router->vrs[lb_rif->ul_vr_id];
 mlxsw_sp_rif_ipip_lb_op(lb_rif, ul_vr->id, 0, 0);

 --ul_vr->rif_count;
 mlxsw_sp_vr_put(mlxsw_sp, ul_vr);
}
