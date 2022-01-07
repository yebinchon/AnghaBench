
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_core_health {void* fw_fatal_reporter; void* fw_reporter; } ;
struct TYPE_2__ {struct mlx5_core_health health; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;
struct devlink {int dummy; } ;


 scalar_t__ IS_ERR (void*) ;
 int MLX5_REPORTER_FW_GRACEFUL_PERIOD ;
 int PTR_ERR (void*) ;
 void* devlink_health_reporter_create (struct devlink*,int *,int ,int,struct mlx5_core_dev*) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,int ) ;
 int mlx5_fw_fatal_reporter_ops ;
 int mlx5_fw_reporter_ops ;
 struct devlink* priv_to_devlink (struct mlx5_core_dev*) ;

__attribute__((used)) static void mlx5_fw_reporters_create(struct mlx5_core_dev *dev)
{
 struct mlx5_core_health *health = &dev->priv.health;
 struct devlink *devlink = priv_to_devlink(dev);

 health->fw_reporter =
  devlink_health_reporter_create(devlink, &mlx5_fw_reporter_ops,
            0, 0, dev);
 if (IS_ERR(health->fw_reporter))
  mlx5_core_warn(dev, "Failed to create fw reporter, err = %ld\n",
          PTR_ERR(health->fw_reporter));

 health->fw_fatal_reporter =
  devlink_health_reporter_create(devlink,
            &mlx5_fw_fatal_reporter_ops,
            MLX5_REPORTER_FW_GRACEFUL_PERIOD,
            1, dev);
 if (IS_ERR(health->fw_fatal_reporter))
  mlx5_core_warn(dev, "Failed to create fw fatal reporter, err = %ld\n",
          PTR_ERR(health->fw_fatal_reporter));
}
