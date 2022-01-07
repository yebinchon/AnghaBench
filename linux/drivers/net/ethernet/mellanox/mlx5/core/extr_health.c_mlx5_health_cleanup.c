
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_core_health {int wq; } ;
struct TYPE_2__ {struct mlx5_core_health health; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int destroy_workqueue (int ) ;
 int mlx5_fw_reporters_destroy (struct mlx5_core_dev*) ;

void mlx5_health_cleanup(struct mlx5_core_dev *dev)
{
 struct mlx5_core_health *health = &dev->priv.health;

 destroy_workqueue(health->wq);
 mlx5_fw_reporters_destroy(dev);
}
