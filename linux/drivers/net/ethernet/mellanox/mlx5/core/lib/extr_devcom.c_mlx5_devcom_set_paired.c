
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_devcom_component {int paired; int sem; } ;
struct mlx5_devcom {TYPE_1__* priv; } ;
typedef enum mlx5_devcom_components { ____Placeholder_mlx5_devcom_components } mlx5_devcom_components ;
struct TYPE_2__ {struct mlx5_devcom_component* components; } ;


 int WARN_ON (int) ;
 int rwsem_is_locked (int *) ;

void mlx5_devcom_set_paired(struct mlx5_devcom *devcom,
       enum mlx5_devcom_components id,
       bool paired)
{
 struct mlx5_devcom_component *comp;

 comp = &devcom->priv->components[id];
 WARN_ON(!rwsem_is_locked(&comp->sem));

 comp->paired = paired;
}
