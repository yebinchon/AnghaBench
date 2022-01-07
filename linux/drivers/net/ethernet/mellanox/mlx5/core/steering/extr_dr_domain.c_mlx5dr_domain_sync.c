
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5dr_domain {int mdev; int mutex; } ;


 int MLX5DR_DOMAIN_SYNC_FLAGS_HW ;
 int MLX5DR_DOMAIN_SYNC_FLAGS_SW ;
 int mlx5dr_cmd_sync_steering (int ) ;
 int mlx5dr_send_ring_force_drain (struct mlx5dr_domain*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int mlx5dr_domain_sync(struct mlx5dr_domain *dmn, u32 flags)
{
 int ret = 0;

 if (flags & MLX5DR_DOMAIN_SYNC_FLAGS_SW) {
  mutex_lock(&dmn->mutex);
  ret = mlx5dr_send_ring_force_drain(dmn);
  mutex_unlock(&dmn->mutex);
  if (ret)
   return ret;
 }

 if (flags & MLX5DR_DOMAIN_SYNC_FLAGS_HW)
  ret = mlx5dr_cmd_sync_steering(dmn->mdev);

 return ret;
}
