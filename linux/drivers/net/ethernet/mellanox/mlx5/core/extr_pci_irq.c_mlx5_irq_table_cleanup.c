
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq_table; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int kvfree (int ) ;

void mlx5_irq_table_cleanup(struct mlx5_core_dev *dev)
{
 kvfree(dev->priv.irq_table);
}
