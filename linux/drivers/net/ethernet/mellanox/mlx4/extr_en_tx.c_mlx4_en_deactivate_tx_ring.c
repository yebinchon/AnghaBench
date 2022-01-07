
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_en_tx_ring {int sp_qp; int sp_qp_state; } ;
struct mlx4_en_priv {struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int dev; } ;


 int MLX4_QP_STATE_RST ;
 int mlx4_qp_modify (int ,int *,int ,int ,int *,int ,int ,int *) ;

void mlx4_en_deactivate_tx_ring(struct mlx4_en_priv *priv,
    struct mlx4_en_tx_ring *ring)
{
 struct mlx4_en_dev *mdev = priv->mdev;

 mlx4_qp_modify(mdev->dev, ((void*)0), ring->sp_qp_state,
         MLX4_QP_STATE_RST, ((void*)0), 0, 0, &ring->sp_qp);
}
