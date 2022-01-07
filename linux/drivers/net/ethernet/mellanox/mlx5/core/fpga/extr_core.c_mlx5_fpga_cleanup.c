
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fpga_device {int dummy; } ;
struct mlx5_core_dev {struct mlx5_fpga_device* fpga; } ;


 int kfree (struct mlx5_fpga_device*) ;
 int mlx5_fpga_device_stop (struct mlx5_core_dev*) ;

void mlx5_fpga_cleanup(struct mlx5_core_dev *mdev)
{
 struct mlx5_fpga_device *fdev = mdev->fpga;

 mlx5_fpga_device_stop(mdev);
 kfree(fdev);
 mdev->fpga = ((void*)0);
}
