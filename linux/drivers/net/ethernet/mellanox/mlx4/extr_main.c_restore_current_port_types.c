
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_priv {int port_mutex; } ;
struct TYPE_2__ {int num_ports; int* possible_type; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
typedef enum mlx4_port_type { ____Placeholder_mlx4_port_type } mlx4_port_type ;


 int mlx4_change_port_types (struct mlx4_dev*,int*) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_start_sense (struct mlx4_dev*) ;
 int mlx4_stop_sense (struct mlx4_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int restore_current_port_types(struct mlx4_dev *dev,
          enum mlx4_port_type *types,
          enum mlx4_port_type *poss_types)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 int err, i;

 mlx4_stop_sense(dev);

 mutex_lock(&priv->port_mutex);
 for (i = 0; i < dev->caps.num_ports; i++)
  dev->caps.possible_type[i + 1] = poss_types[i];
 err = mlx4_change_port_types(dev, types);
 mlx4_start_sense(dev);
 mutex_unlock(&priv->port_mutex);

 return err;
}
