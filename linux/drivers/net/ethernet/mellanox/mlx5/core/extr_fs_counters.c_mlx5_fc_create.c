
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mlx5_fc_stats {int work; int wq; int addlist; int counters_idr_lock; int counters_idr; } ;
struct TYPE_4__ {int packets; int bytes; int lastuse; } ;
struct mlx5_fc {int aging; int addlist; TYPE_2__ cache; int lastpackets; int lastbytes; int id; int list; } ;
struct TYPE_3__ {struct mlx5_fc_stats fc_stats; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 struct mlx5_fc* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int GFP_NOWAIT ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct mlx5_fc*) ;
 int idr_alloc_u32 (int *,struct mlx5_fc*,int *,int ,int ) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 int jiffies ;
 int llist_add (int *,int *) ;
 struct mlx5_fc* mlx5_fc_acquire (struct mlx5_core_dev*,int) ;
 int mlx5_fc_release (struct mlx5_core_dev*,struct mlx5_fc*) ;
 int mod_delayed_work (int ,int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct mlx5_fc *mlx5_fc_create(struct mlx5_core_dev *dev, bool aging)
{
 struct mlx5_fc *counter = mlx5_fc_acquire(dev, aging);
 struct mlx5_fc_stats *fc_stats = &dev->priv.fc_stats;
 int err;

 if (IS_ERR(counter))
  return counter;

 INIT_LIST_HEAD(&counter->list);
 counter->aging = aging;

 if (aging) {
  u32 id = counter->id;

  counter->cache.lastuse = jiffies;
  counter->lastbytes = counter->cache.bytes;
  counter->lastpackets = counter->cache.packets;

  idr_preload(GFP_KERNEL);
  spin_lock(&fc_stats->counters_idr_lock);

  err = idr_alloc_u32(&fc_stats->counters_idr, counter, &id, id,
        GFP_NOWAIT);

  spin_unlock(&fc_stats->counters_idr_lock);
  idr_preload_end();
  if (err)
   goto err_out_alloc;

  llist_add(&counter->addlist, &fc_stats->addlist);

  mod_delayed_work(fc_stats->wq, &fc_stats->work, 0);
 }

 return counter;

err_out_alloc:
 mlx5_fc_release(dev, counter);
 return ERR_PTR(err);
}
