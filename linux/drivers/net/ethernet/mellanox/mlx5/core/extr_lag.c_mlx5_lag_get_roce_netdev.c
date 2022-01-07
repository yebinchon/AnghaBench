
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_5__ {scalar_t__ tx_type; TYPE_1__* netdev_state; } ;
struct mlx5_lag {TYPE_3__* pf; TYPE_2__ tracker; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_6__ {struct net_device* netdev; } ;
struct TYPE_4__ {scalar_t__ tx_enabled; } ;


 scalar_t__ NETDEV_LAG_TX_TYPE_ACTIVEBACKUP ;
 scalar_t__ __mlx5_lag_is_roce (struct mlx5_lag*) ;
 int dev_hold (struct net_device*) ;
 int lag_mutex ;
 struct mlx5_lag* mlx5_lag_dev_get (struct mlx5_core_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct net_device *mlx5_lag_get_roce_netdev(struct mlx5_core_dev *dev)
{
 struct net_device *ndev = ((void*)0);
 struct mlx5_lag *ldev;

 mutex_lock(&lag_mutex);
 ldev = mlx5_lag_dev_get(dev);

 if (!(ldev && __mlx5_lag_is_roce(ldev)))
  goto unlock;

 if (ldev->tracker.tx_type == NETDEV_LAG_TX_TYPE_ACTIVEBACKUP) {
  ndev = ldev->tracker.netdev_state[0].tx_enabled ?
         ldev->pf[0].netdev : ldev->pf[1].netdev;
 } else {
  ndev = ldev->pf[0].netdev;
 }
 if (ndev)
  dev_hold(ndev);

unlock:
 mutex_unlock(&lag_mutex);

 return ndev;
}
