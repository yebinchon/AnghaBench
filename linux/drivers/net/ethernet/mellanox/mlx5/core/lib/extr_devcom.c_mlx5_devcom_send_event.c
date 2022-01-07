
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_devcom_component {int (* handler ) (int,scalar_t__,void*) ;int sem; TYPE_2__* device; } ;
struct mlx5_devcom {int idx; TYPE_1__* priv; } ;
typedef enum mlx5_devcom_components { ____Placeholder_mlx5_devcom_components } mlx5_devcom_components ;
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_3__ {struct mlx5_devcom_component* components; } ;


 int ENODEV ;
 scalar_t__ IS_ERR_OR_NULL (struct mlx5_devcom*) ;
 int MLX5_MAX_PORTS ;
 int down_write (int *) ;
 int stub1 (int,scalar_t__,void*) ;
 int up_write (int *) ;

int mlx5_devcom_send_event(struct mlx5_devcom *devcom,
      enum mlx5_devcom_components id,
      int event,
      void *event_data)
{
 struct mlx5_devcom_component *comp;
 int err = -ENODEV, i;

 if (IS_ERR_OR_NULL(devcom))
  return err;

 comp = &devcom->priv->components[id];
 down_write(&comp->sem);
 for (i = 0; i < MLX5_MAX_PORTS; i++)
  if (i != devcom->idx && comp->device[i].data) {
   err = comp->handler(event, comp->device[i].data,
         event_data);
   break;
  }

 up_write(&comp->sem);
 return err;
}
