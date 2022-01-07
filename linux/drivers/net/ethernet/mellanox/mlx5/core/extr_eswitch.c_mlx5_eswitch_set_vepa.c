
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5_eswitch {scalar_t__ mode; int state_lock; } ;


 int EOPNOTSUPP ;
 int EPERM ;
 int ESW_ALLOWED (struct mlx5_eswitch*) ;
 scalar_t__ MLX5_ESWITCH_LEGACY ;
 int _mlx5_eswitch_set_vepa_locked (struct mlx5_eswitch*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int mlx5_eswitch_set_vepa(struct mlx5_eswitch *esw, u8 setting)
{
 int err = 0;

 if (!esw)
  return -EOPNOTSUPP;

 if (!ESW_ALLOWED(esw))
  return -EPERM;

 mutex_lock(&esw->state_lock);
 if (esw->mode != MLX5_ESWITCH_LEGACY) {
  err = -EOPNOTSUPP;
  goto out;
 }

 err = _mlx5_eswitch_set_vepa_locked(esw, setting);

out:
 mutex_unlock(&esw->state_lock);
 return err;
}
