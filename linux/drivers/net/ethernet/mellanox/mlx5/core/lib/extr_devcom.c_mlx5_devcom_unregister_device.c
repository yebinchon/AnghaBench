
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_devcom_list {size_t idx; int list; int ** devs; struct mlx5_devcom_list* priv; } ;
struct mlx5_devcom {size_t idx; int list; int ** devs; struct mlx5_devcom* priv; } ;


 scalar_t__ IS_ERR_OR_NULL (struct mlx5_devcom_list*) ;
 int MLX5_MAX_PORTS ;
 int kfree (struct mlx5_devcom_list*) ;
 int list_del (int *) ;

void mlx5_devcom_unregister_device(struct mlx5_devcom *devcom)
{
 struct mlx5_devcom_list *priv;
 int i;

 if (IS_ERR_OR_NULL(devcom))
  return;

 priv = devcom->priv;
 priv->devs[devcom->idx] = ((void*)0);

 kfree(devcom);

 for (i = 0; i < MLX5_MAX_PORTS; i++)
  if (priv->devs[i])
   break;

 if (i != MLX5_MAX_PORTS)
  return;

 list_del(&priv->list);
 kfree(priv);
}
