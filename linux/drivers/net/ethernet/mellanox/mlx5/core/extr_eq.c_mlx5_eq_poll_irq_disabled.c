
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int irqn; scalar_t__ cons_index; } ;
struct mlx5_eq_comp {TYPE_1__ core; int irq_nb; } ;


 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int mlx5_eq_comp_int (int *,int ,int *) ;

u32 mlx5_eq_poll_irq_disabled(struct mlx5_eq_comp *eq)
{
 u32 count_eqe;

 disable_irq(eq->core.irqn);
 count_eqe = eq->core.cons_index;
 mlx5_eq_comp_int(&eq->irq_nb, 0, ((void*)0));
 count_eqe = eq->core.cons_index - count_eqe;
 enable_irq(eq->core.irqn);

 return count_eqe;
}
