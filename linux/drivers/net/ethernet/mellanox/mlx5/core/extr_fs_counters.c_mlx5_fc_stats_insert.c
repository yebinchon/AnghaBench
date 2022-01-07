
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fc {int list; int id; } ;
struct mlx5_core_dev {int dummy; } ;
struct list_head {int dummy; } ;


 int list_add_tail (int *,struct list_head*) ;
 struct list_head* mlx5_fc_counters_lookup_next (struct mlx5_core_dev*,int ) ;

__attribute__((used)) static void mlx5_fc_stats_insert(struct mlx5_core_dev *dev,
     struct mlx5_fc *counter)
{
 struct list_head *next = mlx5_fc_counters_lookup_next(dev, counter->id);

 list_add_tail(&counter->list, next);
}
