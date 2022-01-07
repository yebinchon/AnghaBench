
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_rif_ipip_lb {int ul_rif_id; } ;
struct mlxsw_sp_rif {struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int dummy; } ;


 struct mlxsw_sp_rif* mlxsw_sp_rif_by_index (struct mlxsw_sp*,int ) ;
 int mlxsw_sp_rif_ipip_lb_op (struct mlxsw_sp_rif_ipip_lb*,int ,int ,int) ;
 struct mlxsw_sp_rif_ipip_lb* mlxsw_sp_rif_ipip_lb_rif (struct mlxsw_sp_rif*) ;
 int mlxsw_sp_ul_rif_put (struct mlxsw_sp_rif*) ;

__attribute__((used)) static void mlxsw_sp2_rif_ipip_lb_deconfigure(struct mlxsw_sp_rif *rif)
{
 struct mlxsw_sp_rif_ipip_lb *lb_rif = mlxsw_sp_rif_ipip_lb_rif(rif);
 struct mlxsw_sp *mlxsw_sp = rif->mlxsw_sp;
 struct mlxsw_sp_rif *ul_rif;

 ul_rif = mlxsw_sp_rif_by_index(mlxsw_sp, lb_rif->ul_rif_id);
 mlxsw_sp_rif_ipip_lb_op(lb_rif, 0, lb_rif->ul_rif_id, 0);
 mlxsw_sp_ul_rif_put(ul_rif);
}
