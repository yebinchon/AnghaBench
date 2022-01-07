
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_update_qp_params {int flags; } ;
struct mlx4_qp {int qpn; } ;
struct mlx4_en_priv {TYPE_1__* mdev; } ;
typedef int qp_params ;
struct TYPE_2__ {int dev; } ;


 int MLX4_UPDATE_QP_ETH_SRC_CHECK_MC_LB ;
 int MLX4_UPDATE_QP_PARAMS_FLAGS_ETH_CHECK_MC_LB ;
 int memset (struct mlx4_update_qp_params*,int ,int) ;
 int mlx4_update_qp (int ,int ,int ,struct mlx4_update_qp_params*) ;

int mlx4_en_change_mcast_lb(struct mlx4_en_priv *priv, struct mlx4_qp *qp,
       int loopback)
{
 int ret;
 struct mlx4_update_qp_params qp_params;

 memset(&qp_params, 0, sizeof(qp_params));
 if (!loopback)
  qp_params.flags = MLX4_UPDATE_QP_PARAMS_FLAGS_ETH_CHECK_MC_LB;

 ret = mlx4_update_qp(priv->mdev->dev, qp->qpn,
        MLX4_UPDATE_QP_ETH_SRC_CHECK_MC_LB,
        &qp_params);

 return ret;
}
