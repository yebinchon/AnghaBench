
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlx5_rl_table {int max_size; TYPE_3__* rl_entry; } ;
struct mlx5_rate_limit {int member_0; } ;
struct TYPE_4__ {struct mlx5_rl_table rl_table; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;
struct TYPE_5__ {scalar_t__ rate; } ;
struct TYPE_6__ {int index; TYPE_2__ rl; } ;


 int kfree (TYPE_3__*) ;
 int mlx5_set_pp_rate_limit_cmd (struct mlx5_core_dev*,int ,struct mlx5_rate_limit*) ;

void mlx5_cleanup_rl_table(struct mlx5_core_dev *dev)
{
 struct mlx5_rl_table *table = &dev->priv.rl_table;
 struct mlx5_rate_limit rl = {0};
 int i;


 for (i = 0; i < table->max_size; i++)
  if (table->rl_entry[i].rl.rate)
   mlx5_set_pp_rate_limit_cmd(dev, table->rl_entry[i].index,
         &rl);

 kfree(dev->priv.rl_table.rl_entry);
}
