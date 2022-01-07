
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_eq_table {int irq_table; int num_comp_eqs; } ;
struct TYPE_2__ {struct mlx5_eq_table* eq_table; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int create_async_eqs (struct mlx5_core_dev*) ;
 int create_comp_eqs (struct mlx5_core_dev*) ;
 int destroy_async_eqs (struct mlx5_core_dev*) ;
 int mlx5_core_err (struct mlx5_core_dev*,char*) ;
 int mlx5_irq_get_num_comp (int ) ;

int mlx5_eq_table_create(struct mlx5_core_dev *dev)
{
 struct mlx5_eq_table *eq_table = dev->priv.eq_table;
 int err;

 eq_table->num_comp_eqs =
  mlx5_irq_get_num_comp(eq_table->irq_table);

 err = create_async_eqs(dev);
 if (err) {
  mlx5_core_err(dev, "Failed to create async EQs\n");
  goto err_async_eqs;
 }

 err = create_comp_eqs(dev);
 if (err) {
  mlx5_core_err(dev, "Failed to create completion EQs\n");
  goto err_comp_eqs;
 }

 return 0;
err_comp_eqs:
 destroy_async_eqs(dev);
err_async_eqs:
 return err;
}
