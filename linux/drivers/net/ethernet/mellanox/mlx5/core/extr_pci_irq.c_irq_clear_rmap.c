
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_irq_table {int rmap; } ;
struct TYPE_2__ {struct mlx5_irq_table* irq_table; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int free_irq_cpu_rmap (int ) ;

__attribute__((used)) static void irq_clear_rmap(struct mlx5_core_dev *dev)
{





}
