
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_tun_entropy {scalar_t__ num_disabling_entries; int lock; int num_enabling_entries; scalar_t__ enabled; } ;


 int EOPNOTSUPP ;
 int MLX5_REFORMAT_TYPE_L2_TO_NVGRE ;
 int MLX5_REFORMAT_TYPE_L2_TO_VXLAN ;
 int mlx5_set_entropy (struct mlx5_tun_entropy*,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int mlx5_tun_entropy_refcount_inc(struct mlx5_tun_entropy *tun_entropy,
      int reformat_type)
{

 int err = -EOPNOTSUPP;

 mutex_lock(&tun_entropy->lock);
 if (reformat_type == MLX5_REFORMAT_TYPE_L2_TO_VXLAN &&
     tun_entropy->enabled) {




  tun_entropy->num_enabling_entries++;
  err = 0;
 } else if (reformat_type == MLX5_REFORMAT_TYPE_L2_TO_NVGRE) {




  if (tun_entropy->num_disabling_entries == 0)
   err = mlx5_set_entropy(tun_entropy, reformat_type, 0);
  else
   err = 0;
  if (!err)
   tun_entropy->num_disabling_entries++;
 }
 mutex_unlock(&tun_entropy->lock);

 return err;
}
