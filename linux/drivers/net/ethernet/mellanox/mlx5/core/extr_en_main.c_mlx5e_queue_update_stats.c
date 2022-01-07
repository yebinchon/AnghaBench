
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5e_priv {int update_stats_work; int wq; int state; TYPE_1__* profile; } ;
struct TYPE_2__ {int update_stats; } ;


 int MLX5E_STATE_DESTROYING ;
 int queue_work (int ,int *) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;

void mlx5e_queue_update_stats(struct mlx5e_priv *priv)
{
 if (!priv->profile->update_stats)
  return;

 if (unlikely(test_bit(MLX5E_STATE_DESTROYING, &priv->state)))
  return;

 queue_work(priv->wq, &priv->update_stats_work);
}
