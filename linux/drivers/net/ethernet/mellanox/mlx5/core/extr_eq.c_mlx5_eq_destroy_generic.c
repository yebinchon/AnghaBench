
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_eq {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct mlx5_eq*) ;
 int destroy_async_eq (struct mlx5_core_dev*,struct mlx5_eq*) ;
 int kvfree (struct mlx5_eq*) ;

int mlx5_eq_destroy_generic(struct mlx5_core_dev *dev, struct mlx5_eq *eq)
{
 int err;

 if (IS_ERR(eq))
  return -EINVAL;

 err = destroy_async_eq(dev, eq);
 if (err)
  goto out;

 kvfree(eq);
out:
 return err;
}
