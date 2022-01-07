
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;


 int mlx5_cmd_cleanup (struct mlx5_core_dev*) ;
 int mlx5_cmd_teardown_hca (struct mlx5_core_dev*) ;
 int mlx5_core_disable_hca (struct mlx5_core_dev*,int ) ;
 int mlx5_core_err (struct mlx5_core_dev*,char*) ;
 int mlx5_reclaim_startup_pages (struct mlx5_core_dev*) ;
 int mlx5_stop_health_poll (struct mlx5_core_dev*,int) ;

__attribute__((used)) static int mlx5_function_teardown(struct mlx5_core_dev *dev, bool boot)
{
 int err;

 mlx5_stop_health_poll(dev, boot);
 err = mlx5_cmd_teardown_hca(dev);
 if (err) {
  mlx5_core_err(dev, "tear_down_hca failed, skip cleanup\n");
  return err;
 }
 mlx5_reclaim_startup_pages(dev);
 mlx5_core_disable_hca(dev, 0);
 mlx5_cmd_cleanup(dev);

 return 0;
}
