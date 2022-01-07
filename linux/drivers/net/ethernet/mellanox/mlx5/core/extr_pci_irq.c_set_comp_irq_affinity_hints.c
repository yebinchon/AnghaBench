
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq_table; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int clear_comp_irq_affinity_hint (struct mlx5_core_dev*,int) ;
 int mlx5_irq_get_num_comp (int ) ;
 int set_comp_irq_affinity_hint (struct mlx5_core_dev*,int) ;

__attribute__((used)) static int set_comp_irq_affinity_hints(struct mlx5_core_dev *mdev)
{
 int nvec = mlx5_irq_get_num_comp(mdev->priv.irq_table);
 int err;
 int i;

 for (i = 0; i < nvec; i++) {
  err = set_comp_irq_affinity_hint(mdev, i);
  if (err)
   goto err_out;
 }

 return 0;

err_out:
 for (i--; i >= 0; i--)
  clear_comp_irq_affinity_hint(mdev, i);

 return err;
}
