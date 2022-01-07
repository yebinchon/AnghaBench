
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_8__ {TYPE_2__* netdev_state; } ;
struct mlx5_lag {TYPE_3__ tracker; TYPE_1__* pf; } ;
struct TYPE_9__ {struct mlx5_lag* lag; } ;
struct mlx5_core_dev {TYPE_4__ priv; TYPE_5__* pdev; } ;
struct TYPE_10__ {int devfn; } ;
struct TYPE_7__ {scalar_t__ tx_enabled; scalar_t__ link_up; } ;
struct TYPE_6__ {struct net_device* netdev; struct mlx5_core_dev* dev; } ;


 unsigned int MLX5_MAX_PORTS ;
 unsigned int PCI_FUNC (int ) ;
 int lag_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void mlx5_lag_dev_add_pf(struct mlx5_lag *ldev,
    struct mlx5_core_dev *dev,
    struct net_device *netdev)
{
 unsigned int fn = PCI_FUNC(dev->pdev->devfn);

 if (fn >= MLX5_MAX_PORTS)
  return;

 mutex_lock(&lag_mutex);
 ldev->pf[fn].dev = dev;
 ldev->pf[fn].netdev = netdev;
 ldev->tracker.netdev_state[fn].link_up = 0;
 ldev->tracker.netdev_state[fn].tx_enabled = 0;

 dev->priv.lag = ldev;

 mutex_unlock(&lag_mutex);
}
