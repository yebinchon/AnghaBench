
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_eq {int buf; int irqn; int eqn; } ;
struct mlx5_core_dev {int dummy; } ;


 int mlx5_buf_free (struct mlx5_core_dev*,int *) ;
 int mlx5_cmd_destroy_eq (struct mlx5_core_dev*,int ) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,int ) ;
 int mlx5_debug_eq_remove (struct mlx5_core_dev*,struct mlx5_eq*) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static int destroy_unmap_eq(struct mlx5_core_dev *dev, struct mlx5_eq *eq)
{
 int err;

 mlx5_debug_eq_remove(dev, eq);

 err = mlx5_cmd_destroy_eq(dev, eq->eqn);
 if (err)
  mlx5_core_warn(dev, "failed to destroy a previously created eq: eqn %d\n",
          eq->eqn);
 synchronize_irq(eq->irqn);

 mlx5_buf_free(dev, &eq->buf);

 return err;
}
