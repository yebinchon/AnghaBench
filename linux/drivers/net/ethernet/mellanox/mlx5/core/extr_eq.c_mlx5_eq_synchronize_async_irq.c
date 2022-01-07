
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* eq_table; } ;
struct mlx5_core_dev {TYPE_4__ priv; } ;
struct TYPE_5__ {int irqn; } ;
struct TYPE_6__ {TYPE_1__ core; } ;
struct TYPE_7__ {TYPE_2__ async_eq; } ;


 int synchronize_irq (int ) ;

void mlx5_eq_synchronize_async_irq(struct mlx5_core_dev *dev)
{
 synchronize_irq(dev->priv.eq_table->async_eq.core.irqn);
}
