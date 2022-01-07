
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mlx5e_channel {TYPE_1__* stats; int netdev; } ;
struct TYPE_4__ {int eqn; int irqn; int cons_index; } ;
struct mlx5_eq_comp {TYPE_2__ core; } ;
struct TYPE_3__ {int eq_rearm; } ;


 int EIO ;
 int mlx5_eq_poll_irq_disabled (struct mlx5_eq_comp*) ;
 int netdev_err (int ,char*,int ,int ,...) ;

int mlx5e_health_channel_eq_recover(struct mlx5_eq_comp *eq, struct mlx5e_channel *channel)
{
 u32 eqe_count;

 netdev_err(channel->netdev, "EQ 0x%x: Cons = 0x%x, irqn = 0x%x\n",
     eq->core.eqn, eq->core.cons_index, eq->core.irqn);

 eqe_count = mlx5_eq_poll_irq_disabled(eq);
 if (!eqe_count)
  return -EIO;

 netdev_err(channel->netdev, "Recovered %d eqes on EQ 0x%x\n",
     eqe_count, eq->core.eqn);

 channel->stats->eq_rearm++;
 return 0;
}
