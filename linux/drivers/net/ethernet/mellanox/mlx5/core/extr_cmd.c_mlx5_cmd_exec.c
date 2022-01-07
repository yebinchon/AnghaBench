
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;


 int cmd_exec (struct mlx5_core_dev*,void*,int,void*,int,int *,int *,int) ;
 int mlx5_cmd_check (struct mlx5_core_dev*,void*,void*) ;

int mlx5_cmd_exec(struct mlx5_core_dev *dev, void *in, int in_size, void *out,
    int out_size)
{
 int err;

 err = cmd_exec(dev, in, in_size, out, out_size, ((void*)0), ((void*)0), 0);
 return err ? : mlx5_cmd_check(dev, in, out);
}
