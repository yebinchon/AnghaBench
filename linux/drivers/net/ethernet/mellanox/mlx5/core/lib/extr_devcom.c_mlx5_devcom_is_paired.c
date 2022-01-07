
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_devcom {TYPE_2__* priv; } ;
typedef enum mlx5_devcom_components { ____Placeholder_mlx5_devcom_components } mlx5_devcom_components ;
struct TYPE_4__ {TYPE_1__* components; } ;
struct TYPE_3__ {int paired; } ;


 scalar_t__ IS_ERR_OR_NULL (struct mlx5_devcom*) ;

bool mlx5_devcom_is_paired(struct mlx5_devcom *devcom,
      enum mlx5_devcom_components id)
{
 if (IS_ERR_OR_NULL(devcom))
  return 0;

 return devcom->priv->components[id].paired;
}
