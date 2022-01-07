
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_rl_table {int rl_lock; } ;
struct mlx5_rate_limit {scalar_t__ rate; int typical_pkt_sz; int max_burst_sz; int member_0; } ;
struct mlx5_rl_entry {struct mlx5_rate_limit rl; int index; int refcount; } ;
struct TYPE_2__ {struct mlx5_rl_table rl_table; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 struct mlx5_rl_entry* find_rl_entry (struct mlx5_rl_table*,struct mlx5_rate_limit*) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,scalar_t__,int ,int ) ;
 int mlx5_set_pp_rate_limit_cmd (struct mlx5_core_dev*,int ,struct mlx5_rate_limit*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void mlx5_rl_remove_rate(struct mlx5_core_dev *dev, struct mlx5_rate_limit *rl)
{
 struct mlx5_rl_table *table = &dev->priv.rl_table;
 struct mlx5_rl_entry *entry = ((void*)0);
 struct mlx5_rate_limit reset_rl = {0};


 if (rl->rate == 0)
  return;

 mutex_lock(&table->rl_lock);
 entry = find_rl_entry(table, rl);
 if (!entry || !entry->refcount) {
  mlx5_core_warn(dev, "Rate %u, max_burst_sz %u typical_pkt_sz %u are not configured\n",
          rl->rate, rl->max_burst_sz, rl->typical_pkt_sz);
  goto out;
 }

 entry->refcount--;
 if (!entry->refcount) {

  mlx5_set_pp_rate_limit_cmd(dev, entry->index, &reset_rl);
  entry->rl = reset_rl;
 }

out:
 mutex_unlock(&table->rl_lock);
}
