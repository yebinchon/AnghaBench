
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_en_priv {TYPE_1__* mdev; } ;
struct mlx4_en_cq {int moder_time; int moder_cnt; int mcq; } ;
struct TYPE_2__ {int dev; } ;


 int mlx4_cq_modify (int ,int *,int ,int ) ;

int mlx4_en_set_cq_moder(struct mlx4_en_priv *priv, struct mlx4_en_cq *cq)
{
 return mlx4_cq_modify(priv->mdev->dev, &cq->mcq,
         cq->moder_cnt, cq->moder_time);
}
