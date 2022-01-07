
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pg_wq; int pg_nb; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int flush_workqueue (int ) ;
 int mlx5_eq_notifier_unregister (struct mlx5_core_dev*,int *) ;

void mlx5_pagealloc_stop(struct mlx5_core_dev *dev)
{
 mlx5_eq_notifier_unregister(dev, &dev->priv.pg_nb);
 flush_workqueue(dev->priv.pg_wq);
}
