
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_core_health {int fw_fatal_reporter; int fw_reporter; } ;
struct TYPE_2__ {struct mlx5_core_health health; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int IS_ERR_OR_NULL (int ) ;
 int devlink_health_reporter_destroy (int ) ;

__attribute__((used)) static void mlx5_fw_reporters_destroy(struct mlx5_core_dev *dev)
{
 struct mlx5_core_health *health = &dev->priv.health;

 if (!IS_ERR_OR_NULL(health->fw_reporter))
  devlink_health_reporter_destroy(health->fw_reporter);

 if (!IS_ERR_OR_NULL(health->fw_fatal_reporter))
  devlink_health_reporter_destroy(health->fw_fatal_reporter);
}
