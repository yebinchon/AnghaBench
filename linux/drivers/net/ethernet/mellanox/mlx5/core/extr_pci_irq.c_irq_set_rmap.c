
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_irq_table {int nvec; int rmap; } ;
struct TYPE_2__ {struct mlx5_irq_table* irq_table; } ;
struct mlx5_core_dev {int pdev; TYPE_1__ priv; } ;


 int ENOMEM ;
 int MLX5_IRQ_VEC_COMP_BASE ;
 int alloc_irq_cpu_rmap (int) ;
 int irq_clear_rmap (struct mlx5_core_dev*) ;
 int irq_cpu_rmap_add (int ,int ) ;
 int mlx5_core_err (struct mlx5_core_dev*,char*,int) ;
 int mlx5_irq_get_num_comp (struct mlx5_irq_table*) ;
 int pci_irq_vector (int ,int) ;

__attribute__((used)) static int irq_set_rmap(struct mlx5_core_dev *mdev)
{
 int err = 0;
 return err;
}
