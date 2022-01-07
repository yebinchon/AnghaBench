
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_fc_stats {int counters_idr_lock; int counters_idr; } ;
struct mlx5_fc {int id; int list; } ;
struct TYPE_2__ {struct mlx5_fc_stats fc_stats; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int WARN_ON (int) ;
 int idr_remove (int *,int ) ;
 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void mlx5_fc_stats_remove(struct mlx5_core_dev *dev,
     struct mlx5_fc *counter)
{
 struct mlx5_fc_stats *fc_stats = &dev->priv.fc_stats;

 list_del(&counter->list);

 spin_lock(&fc_stats->counters_idr_lock);
 WARN_ON(!idr_remove(&fc_stats->counters_idr, counter->id));
 spin_unlock(&fc_stats->counters_idr_lock);
}
