
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mlx5_lag {TYPE_1__* pf; } ;
struct TYPE_2__ {struct net_device* netdev; } ;


 int MLX5_MAX_PORTS ;

int mlx5_lag_dev_get_netdev_idx(struct mlx5_lag *ldev,
    struct net_device *ndev)
{
 int i;

 for (i = 0; i < MLX5_MAX_PORTS; i++)
  if (ldev->pf[i].netdev == ndev)
   return i;

 return -1;
}
