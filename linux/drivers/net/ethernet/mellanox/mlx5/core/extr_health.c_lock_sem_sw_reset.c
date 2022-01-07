
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;
typedef enum mlx5_vsc_state { ____Placeholder_mlx5_vsc_state } mlx5_vsc_state ;


 int EBUSY ;
 int EINVAL ;
 int MLX5_SEMAPHORE_SW_RESET ;
 int MLX5_VSC_LOCK ;
 int MLX5_VSC_UNLOCK ;
 int mlx5_core_is_pf (struct mlx5_core_dev*) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*) ;
 int mlx5_vsc_gw_lock (struct mlx5_core_dev*) ;
 int mlx5_vsc_gw_unlock (struct mlx5_core_dev*) ;
 int mlx5_vsc_sem_set_space (struct mlx5_core_dev*,int ,int) ;

__attribute__((used)) static int lock_sem_sw_reset(struct mlx5_core_dev *dev, bool lock)
{
 enum mlx5_vsc_state state;
 int ret;

 if (!mlx5_core_is_pf(dev))
  return -EBUSY;





 ret = mlx5_vsc_gw_lock(dev);
 if (ret == -EBUSY)
  return -EINVAL;
 if (ret)
  return ret;

 state = lock ? MLX5_VSC_LOCK : MLX5_VSC_UNLOCK;




 ret = mlx5_vsc_sem_set_space(dev, MLX5_SEMAPHORE_SW_RESET, state);
 if (ret)
  mlx5_core_warn(dev, "Failed to lock SW reset semaphore\n");


 mlx5_vsc_gw_unlock(dev);

 return ret;
}
