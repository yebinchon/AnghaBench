
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;
struct devlink_health_reporter {int dummy; } ;


 struct mlx5_core_dev* devlink_health_reporter_priv (struct devlink_health_reporter*) ;
 int mlx5_health_try_recover (struct mlx5_core_dev*) ;

__attribute__((used)) static int
mlx5_fw_fatal_reporter_recover(struct devlink_health_reporter *reporter,
          void *priv_ctx)
{
 struct mlx5_core_dev *dev = devlink_health_reporter_priv(reporter);

 return mlx5_health_try_recover(dev);
}
