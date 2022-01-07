
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_fc_stats {int bulk_query_out; int fc_pool; int work; int sampling_interval; int wq; int dellist; int addlist; int counters; int counters_idr; int counters_idr_lock; } ;
struct TYPE_2__ {struct mlx5_fc_stats fc_stats; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int MLX5_FC_STATS_PERIOD ;
 int create_singlethread_workqueue (char*) ;
 int get_max_bulk_query_len (struct mlx5_core_dev*) ;
 int idr_init (int *) ;
 int init_llist_head (int *) ;
 int kfree (int ) ;
 int kzalloc (int,int ) ;
 int mlx5_cmd_fc_get_bulk_query_out_len (int) ;
 int mlx5_fc_pool_init (int *,struct mlx5_core_dev*) ;
 int mlx5_fc_stats_work ;
 int spin_lock_init (int *) ;

int mlx5_init_fc_stats(struct mlx5_core_dev *dev)
{
 struct mlx5_fc_stats *fc_stats = &dev->priv.fc_stats;
 int max_bulk_len;
 int max_out_len;

 spin_lock_init(&fc_stats->counters_idr_lock);
 idr_init(&fc_stats->counters_idr);
 INIT_LIST_HEAD(&fc_stats->counters);
 init_llist_head(&fc_stats->addlist);
 init_llist_head(&fc_stats->dellist);

 max_bulk_len = get_max_bulk_query_len(dev);
 max_out_len = mlx5_cmd_fc_get_bulk_query_out_len(max_bulk_len);
 fc_stats->bulk_query_out = kzalloc(max_out_len, GFP_KERNEL);
 if (!fc_stats->bulk_query_out)
  return -ENOMEM;

 fc_stats->wq = create_singlethread_workqueue("mlx5_fc");
 if (!fc_stats->wq)
  goto err_wq_create;

 fc_stats->sampling_interval = MLX5_FC_STATS_PERIOD;
 INIT_DELAYED_WORK(&fc_stats->work, mlx5_fc_stats_work);

 mlx5_fc_pool_init(&fc_stats->fc_pool, dev);
 return 0;

err_wq_create:
 kfree(fc_stats->bulk_query_out);
 return -ENOMEM;
}
