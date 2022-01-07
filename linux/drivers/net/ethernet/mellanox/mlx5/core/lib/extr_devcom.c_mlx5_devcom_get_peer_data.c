
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_devcom_component {TYPE_1__* device; int sem; int paired; } ;
struct mlx5_devcom {int idx; TYPE_2__* priv; } ;
typedef enum mlx5_devcom_components { ____Placeholder_mlx5_devcom_components } mlx5_devcom_components ;
struct TYPE_4__ {struct mlx5_devcom_component* components; } ;
struct TYPE_3__ {void* data; } ;


 scalar_t__ IS_ERR_OR_NULL (struct mlx5_devcom*) ;
 int MLX5_MAX_PORTS ;
 int down_read (int *) ;
 int up_read (int *) ;

void *mlx5_devcom_get_peer_data(struct mlx5_devcom *devcom,
    enum mlx5_devcom_components id)
{
 struct mlx5_devcom_component *comp;
 int i;

 if (IS_ERR_OR_NULL(devcom))
  return ((void*)0);

 comp = &devcom->priv->components[id];
 down_read(&comp->sem);
 if (!comp->paired) {
  up_read(&comp->sem);
  return ((void*)0);
 }

 for (i = 0; i < MLX5_MAX_PORTS; i++)
  if (i != devcom->idx)
   break;

 return comp->device[i].data;
}
