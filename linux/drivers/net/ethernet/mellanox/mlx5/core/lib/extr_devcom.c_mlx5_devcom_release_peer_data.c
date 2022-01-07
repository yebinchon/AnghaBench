
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_devcom_component {int sem; } ;
struct mlx5_devcom {TYPE_1__* priv; } ;
typedef enum mlx5_devcom_components { ____Placeholder_mlx5_devcom_components } mlx5_devcom_components ;
struct TYPE_2__ {struct mlx5_devcom_component* components; } ;


 int up_read (int *) ;

void mlx5_devcom_release_peer_data(struct mlx5_devcom *devcom,
       enum mlx5_devcom_components id)
{
 struct mlx5_devcom_component *comp = &devcom->priv->components[id];

 up_read(&comp->sem);
}
