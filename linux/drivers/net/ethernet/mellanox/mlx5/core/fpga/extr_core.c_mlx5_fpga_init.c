
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fpga_device {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {struct mlx5_fpga_device* fpga; } ;


 int ENOMEM ;
 int MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int fpga ;
 int mlx5_core_dbg (struct mlx5_core_dev*,char*) ;
 struct mlx5_fpga_device* mlx5_fpga_device_alloc () ;

int mlx5_fpga_init(struct mlx5_core_dev *mdev)
{
 struct mlx5_fpga_device *fdev = ((void*)0);

 if (!MLX5_CAP_GEN(mdev, fpga)) {
  mlx5_core_dbg(mdev, "FPGA capability not present\n");
  return 0;
 }

 mlx5_core_dbg(mdev, "Initializing FPGA\n");

 fdev = mlx5_fpga_device_alloc();
 if (!fdev)
  return -ENOMEM;

 fdev->mdev = mdev;
 mdev->fpga = fdev;

 return 0;
}
