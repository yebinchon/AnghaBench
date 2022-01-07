
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5i_priv {int qp; } ;
struct mlx5e_priv {struct mlx5_core_dev* mdev; struct mlx5i_priv* ppriv; } ;
struct mlx5_qp_context {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;


 int MLX5_CMD_OP_2RST_QP ;
 int mlx5_core_err (struct mlx5_core_dev*,char*,int) ;
 int mlx5_core_qp_modify (struct mlx5_core_dev*,int ,int ,struct mlx5_qp_context*,int *) ;

void mlx5i_uninit_underlay_qp(struct mlx5e_priv *priv)
{
 struct mlx5i_priv *ipriv = priv->ppriv;
 struct mlx5_core_dev *mdev = priv->mdev;
 struct mlx5_qp_context context;
 int err;

 err = mlx5_core_qp_modify(mdev, MLX5_CMD_OP_2RST_QP, 0, &context,
      &ipriv->qp);
 if (err)
  mlx5_core_err(mdev, "Failed to modify qp 2RST, err: %d\n", err);
}
