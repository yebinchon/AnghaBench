
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct mlx5_events {int nh; } ;
struct TYPE_2__ {struct mlx5_events* events; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int atomic_notifier_chain_register (int *,struct notifier_block*) ;

int mlx5_notifier_register(struct mlx5_core_dev *dev, struct notifier_block *nb)
{
 struct mlx5_events *events = dev->priv.events;

 return atomic_notifier_chain_register(&events->nh, nb);
}
