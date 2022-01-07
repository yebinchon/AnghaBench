
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_devcom_component {int sem; TYPE_2__* device; } ;
struct mlx5_devcom {size_t idx; TYPE_1__* priv; } ;
typedef enum mlx5_devcom_components { ____Placeholder_mlx5_devcom_components } mlx5_devcom_components ;
struct TYPE_4__ {int * data; } ;
struct TYPE_3__ {struct mlx5_devcom_component* components; } ;


 scalar_t__ IS_ERR_OR_NULL (struct mlx5_devcom*) ;
 int down_write (int *) ;
 int up_write (int *) ;

void mlx5_devcom_unregister_component(struct mlx5_devcom *devcom,
          enum mlx5_devcom_components id)
{
 struct mlx5_devcom_component *comp;

 if (IS_ERR_OR_NULL(devcom))
  return;

 comp = &devcom->priv->components[id];
 down_write(&comp->sem);
 comp->device[devcom->idx].data = ((void*)0);
 up_write(&comp->sem);
}
