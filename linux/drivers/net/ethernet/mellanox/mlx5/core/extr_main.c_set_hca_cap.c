
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;


 int handle_hca_cap (struct mlx5_core_dev*) ;
 int handle_hca_cap_atomic (struct mlx5_core_dev*) ;
 int handle_hca_cap_odp (struct mlx5_core_dev*) ;
 int mlx5_core_err (struct mlx5_core_dev*,char*) ;

__attribute__((used)) static int set_hca_cap(struct mlx5_core_dev *dev)
{
 int err;

 err = handle_hca_cap(dev);
 if (err) {
  mlx5_core_err(dev, "handle_hca_cap failed\n");
  goto out;
 }

 err = handle_hca_cap_atomic(dev);
 if (err) {
  mlx5_core_err(dev, "handle_hca_cap_atomic failed\n");
  goto out;
 }

 err = handle_hca_cap_odp(dev);
 if (err) {
  mlx5_core_err(dev, "handle_hca_cap_odp failed\n");
  goto out;
 }

out:
 return err;
}
