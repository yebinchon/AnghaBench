
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct mlx5_core_dev {int dummy; } ;
typedef enum mlx5_vsc_state { ____Placeholder_mlx5_vsc_state } mlx5_vsc_state ;


 int EBUSY ;
 int EINVAL ;
 int MLX5_SEMAPHORE_SPACE_DOMAIN ;
 int MLX5_VSC_LOCK ;
 int VSC_COUNTER_OFFSET ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,int) ;
 int mlx5_vsc_gw_read (struct mlx5_core_dev*,int ,scalar_t__*) ;
 int mlx5_vsc_gw_set_space (struct mlx5_core_dev*,int ,int *) ;
 int mlx5_vsc_gw_write (struct mlx5_core_dev*,int ,scalar_t__) ;
 int vsc_read (struct mlx5_core_dev*,int ,scalar_t__*) ;

int mlx5_vsc_sem_set_space(struct mlx5_core_dev *dev, u16 space,
      enum mlx5_vsc_state state)
{
 u32 data, id = 0;
 int ret;

 ret = mlx5_vsc_gw_set_space(dev, MLX5_SEMAPHORE_SPACE_DOMAIN, ((void*)0));
 if (ret) {
  mlx5_core_warn(dev, "Failed to set gw space %d\n", ret);
  return ret;
 }

 if (state == MLX5_VSC_LOCK) {

  ret = vsc_read(dev, VSC_COUNTER_OFFSET, &id);
  if (ret)
   return ret;
 }


 ret = mlx5_vsc_gw_write(dev, space, id);
 if (ret)
  return ret;


 ret = mlx5_vsc_gw_read(dev, space, &data);
 if (ret)
  return -EINVAL;

 if (data != id)
  return -EBUSY;

 return 0;
}
