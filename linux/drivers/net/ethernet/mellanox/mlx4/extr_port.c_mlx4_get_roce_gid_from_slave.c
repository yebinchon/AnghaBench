
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct mlx4_priv {TYPE_3__* port; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_5__ {TYPE_1__* roce_gids; } ;
struct TYPE_6__ {TYPE_2__ gid_table; } ;
struct TYPE_4__ {int raw; } ;


 int EINVAL ;
 int MLX4_ROCE_GID_ENTRY_SIZE ;
 int memcpy (int *,int ,int ) ;
 int mlx4_is_master (struct mlx4_dev*) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;

int mlx4_get_roce_gid_from_slave(struct mlx4_dev *dev, int port, int slave_id,
     u8 *gid)
{
 struct mlx4_priv *priv = mlx4_priv(dev);

 if (!mlx4_is_master(dev))
  return -EINVAL;

 memcpy(gid, priv->port[port].gid_table.roce_gids[slave_id].raw,
        MLX4_ROCE_GID_ENTRY_SIZE);
 return 0;
}
