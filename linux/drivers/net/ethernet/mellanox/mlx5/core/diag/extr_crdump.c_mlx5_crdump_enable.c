
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ crdump_size; } ;
struct mlx5_priv {TYPE_1__ health; } ;
struct mlx5_core_dev {struct mlx5_priv priv; } ;


 int EINVAL ;
 int MLX5_VSC_SPACE_SCAN_CRSPACE ;
 int mlx5_core_is_pf (struct mlx5_core_dev*) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*) ;
 scalar_t__ mlx5_crdump_enabled (struct mlx5_core_dev*) ;
 int mlx5_vsc_accessible (struct mlx5_core_dev*) ;
 int mlx5_vsc_gw_lock (struct mlx5_core_dev*) ;
 int mlx5_vsc_gw_set_space (struct mlx5_core_dev*,int ,scalar_t__*) ;
 int mlx5_vsc_gw_unlock (struct mlx5_core_dev*) ;

int mlx5_crdump_enable(struct mlx5_core_dev *dev)
{
 struct mlx5_priv *priv = &dev->priv;
 u32 space_size;
 int ret;

 if (!mlx5_core_is_pf(dev) || !mlx5_vsc_accessible(dev) ||
     mlx5_crdump_enabled(dev))
  return 0;

 ret = mlx5_vsc_gw_lock(dev);
 if (ret)
  return ret;


 ret = mlx5_vsc_gw_set_space(dev, MLX5_VSC_SPACE_SCAN_CRSPACE,
        &space_size);
 if (ret) {

  mlx5_vsc_gw_unlock(dev);
  return 0;
 }

 if (!space_size) {
  mlx5_core_warn(dev, "Invalid Crspace size, zero\n");
  mlx5_vsc_gw_unlock(dev);
  return -EINVAL;
 }

 ret = mlx5_vsc_gw_unlock(dev);
 if (ret)
  return ret;

 priv->health.crdump_size = space_size;
 return 0;
}
