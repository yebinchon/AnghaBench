
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_fc_stats {int wq; } ;
struct TYPE_2__ {struct mlx5_fc_stats fc_stats; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;
struct delayed_work {int dummy; } ;


 int queue_delayed_work (int ,struct delayed_work*,unsigned long) ;

void mlx5_fc_queue_stats_work(struct mlx5_core_dev *dev,
         struct delayed_work *dwork,
         unsigned long delay)
{
 struct mlx5_fc_stats *fc_stats = &dev->priv.fc_stats;

 queue_delayed_work(fc_stats->wq, dwork, delay);
}
