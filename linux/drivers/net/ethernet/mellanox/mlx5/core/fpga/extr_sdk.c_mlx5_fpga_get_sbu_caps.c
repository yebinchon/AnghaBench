
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fpga_device {int mdev; } ;


 int mlx5_fpga_sbu_caps (int ,void*,int) ;

int mlx5_fpga_get_sbu_caps(struct mlx5_fpga_device *fdev, int size, void *buf)
{
 return mlx5_fpga_sbu_caps(fdev->mdev, buf, size);
}
