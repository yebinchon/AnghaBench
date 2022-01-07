
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_irq_table {int nvec; } ;


 int MLX5_IRQ_VEC_COMP_BASE ;

int mlx5_irq_get_num_comp(struct mlx5_irq_table *table)
{
 return table->nvec - MLX5_IRQ_VEC_COMP_BASE;
}
