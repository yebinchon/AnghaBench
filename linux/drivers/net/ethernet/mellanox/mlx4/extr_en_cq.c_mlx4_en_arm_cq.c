
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_en_priv {TYPE_1__* mdev; } ;
struct mlx4_en_cq {int mcq; } ;
struct TYPE_2__ {int uar_lock; int uar_map; } ;


 int MLX4_CQ_DB_REQ_NOT ;
 int mlx4_cq_arm (int *,int ,int ,int *) ;

void mlx4_en_arm_cq(struct mlx4_en_priv *priv, struct mlx4_en_cq *cq)
{
 mlx4_cq_arm(&cq->mcq, MLX4_CQ_DB_REQ_NOT, priv->mdev->uar_map,
      &priv->mdev->uar_lock);
}
