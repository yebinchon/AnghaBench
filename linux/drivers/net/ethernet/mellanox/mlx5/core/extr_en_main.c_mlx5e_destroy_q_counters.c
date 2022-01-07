
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {scalar_t__ drop_rq_q_counter; int mdev; scalar_t__ q_counter; } ;


 int mlx5_core_dealloc_q_counter (int ,scalar_t__) ;

void mlx5e_destroy_q_counters(struct mlx5e_priv *priv)
{
 if (priv->q_counter)
  mlx5_core_dealloc_q_counter(priv->mdev, priv->q_counter);

 if (priv->drop_rq_q_counter)
  mlx5_core_dealloc_q_counter(priv->mdev, priv->drop_rq_q_counter);
}
