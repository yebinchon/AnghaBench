
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int drop_rq_q_counter; int q_counter; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;


 int mlx5_core_alloc_q_counter (struct mlx5_core_dev*,int *) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,int) ;

void mlx5e_create_q_counters(struct mlx5e_priv *priv)
{
 struct mlx5_core_dev *mdev = priv->mdev;
 int err;

 err = mlx5_core_alloc_q_counter(mdev, &priv->q_counter);
 if (err) {
  mlx5_core_warn(mdev, "alloc queue counter failed, %d\n", err);
  priv->q_counter = 0;
 }

 err = mlx5_core_alloc_q_counter(mdev, &priv->drop_rq_q_counter);
 if (err) {
  mlx5_core_warn(mdev, "alloc drop RQ counter failed, %d\n", err);
  priv->drop_rq_q_counter = 0;
 }
}
