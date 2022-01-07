
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct mlx5e_priv {struct mlx5_core_dev* mdev; } ;
struct mlx5e_port_buffer {int port_buffer_size; TYPE_1__* buffer; } ;
struct mlx5_core_dev {int dummy; } ;
struct dcbnl_buffer {int total_size; int * buffer_size; int * prio2buffer; } ;
struct TYPE_2__ {int size; } ;


 int EOPNOTSUPP ;
 int MLX5E_MAX_BUFFER ;
 int MLX5E_MAX_PRIORITY ;
 int MLX5_BUFFER_SUPPORTED (struct mlx5_core_dev*) ;
 int mlx5e_port_query_buffer (struct mlx5e_priv*,struct mlx5e_port_buffer*) ;
 int mlx5e_port_query_priority2buffer (struct mlx5_core_dev*,int *) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx5e_dcbnl_getbuffer(struct net_device *dev,
     struct dcbnl_buffer *dcb_buffer)
{
 struct mlx5e_priv *priv = netdev_priv(dev);
 struct mlx5_core_dev *mdev = priv->mdev;
 struct mlx5e_port_buffer port_buffer;
 u8 buffer[MLX5E_MAX_PRIORITY];
 int i, err;

 if (!MLX5_BUFFER_SUPPORTED(mdev))
  return -EOPNOTSUPP;

 err = mlx5e_port_query_priority2buffer(mdev, buffer);
 if (err)
  return err;

 for (i = 0; i < MLX5E_MAX_PRIORITY; i++)
  dcb_buffer->prio2buffer[i] = buffer[i];

 err = mlx5e_port_query_buffer(priv, &port_buffer);
 if (err)
  return err;

 for (i = 0; i < MLX5E_MAX_BUFFER; i++)
  dcb_buffer->buffer_size[i] = port_buffer.buffer[i].size;
 dcb_buffer->total_size = port_buffer.port_buffer_size;

 return 0;
}
