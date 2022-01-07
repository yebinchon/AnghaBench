
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlxsw_sp_rif_ipip_lb {int ul_rif_id; scalar_t__ ul_vr_id; } ;
struct mlxsw_sp_rif {int rif_index; struct mlxsw_sp* mlxsw_sp; int dev; } ;
struct mlxsw_sp {int dummy; } ;


 scalar_t__ IS_ERR (struct mlxsw_sp_rif*) ;
 int PTR_ERR (struct mlxsw_sp_rif*) ;
 int mlxsw_sp_ipip_dev_ul_tb_id (int ) ;
 int mlxsw_sp_rif_ipip_lb_op (struct mlxsw_sp_rif_ipip_lb*,int ,int ,int) ;
 struct mlxsw_sp_rif_ipip_lb* mlxsw_sp_rif_ipip_lb_rif (struct mlxsw_sp_rif*) ;
 struct mlxsw_sp_rif* mlxsw_sp_ul_rif_get (struct mlxsw_sp*,int ,int *) ;
 int mlxsw_sp_ul_rif_put (struct mlxsw_sp_rif*) ;

__attribute__((used)) static int
mlxsw_sp2_rif_ipip_lb_configure(struct mlxsw_sp_rif *rif)
{
 struct mlxsw_sp_rif_ipip_lb *lb_rif = mlxsw_sp_rif_ipip_lb_rif(rif);
 u32 ul_tb_id = mlxsw_sp_ipip_dev_ul_tb_id(rif->dev);
 struct mlxsw_sp *mlxsw_sp = rif->mlxsw_sp;
 struct mlxsw_sp_rif *ul_rif;
 int err;

 ul_rif = mlxsw_sp_ul_rif_get(mlxsw_sp, ul_tb_id, ((void*)0));
 if (IS_ERR(ul_rif))
  return PTR_ERR(ul_rif);

 err = mlxsw_sp_rif_ipip_lb_op(lb_rif, 0, ul_rif->rif_index, 1);
 if (err)
  goto err_loopback_op;

 lb_rif->ul_vr_id = 0;
 lb_rif->ul_rif_id = ul_rif->rif_index;

 return 0;

err_loopback_op:
 mlxsw_sp_ul_rif_put(ul_rif);
 return err;
}
