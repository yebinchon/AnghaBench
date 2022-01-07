
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_fc_stats {int work; int wq; int dellist; } ;
struct mlx5_fc {int dellist; scalar_t__ aging; } ;
struct TYPE_2__ {struct mlx5_fc_stats fc_stats; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int llist_add (int *,int *) ;
 int mlx5_fc_release (struct mlx5_core_dev*,struct mlx5_fc*) ;
 int mod_delayed_work (int ,int *,int ) ;

void mlx5_fc_destroy(struct mlx5_core_dev *dev, struct mlx5_fc *counter)
{
 struct mlx5_fc_stats *fc_stats = &dev->priv.fc_stats;

 if (!counter)
  return;

 if (counter->aging) {
  llist_add(&counter->dellist, &fc_stats->dellist);
  mod_delayed_work(fc_stats->wq, &fc_stats->work, 0);
  return;
 }

 mlx5_fc_release(dev, counter);
}
