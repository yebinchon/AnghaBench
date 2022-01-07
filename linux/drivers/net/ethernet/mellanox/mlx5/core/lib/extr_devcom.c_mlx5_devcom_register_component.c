
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_devcom_component {int sem; TYPE_1__* device; int handler; } ;
struct mlx5_devcom {size_t idx; TYPE_2__* priv; } ;
typedef int mlx5_devcom_event_handler_t ;
typedef enum mlx5_devcom_components { ____Placeholder_mlx5_devcom_components } mlx5_devcom_components ;
struct TYPE_4__ {struct mlx5_devcom_component* components; } ;
struct TYPE_3__ {void* data; } ;


 scalar_t__ IS_ERR_OR_NULL (struct mlx5_devcom*) ;
 int WARN_ON (int) ;
 int down_write (int *) ;
 int up_write (int *) ;

void mlx5_devcom_register_component(struct mlx5_devcom *devcom,
        enum mlx5_devcom_components id,
        mlx5_devcom_event_handler_t handler,
        void *data)
{
 struct mlx5_devcom_component *comp;

 if (IS_ERR_OR_NULL(devcom))
  return;

 WARN_ON(!data);

 comp = &devcom->priv->components[id];
 down_write(&comp->sem);
 comp->handler = handler;
 comp->device[devcom->idx].data = data;
 up_write(&comp->sem);
}
