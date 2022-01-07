
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fpga_device {int state; int state_lock; } ;


 int GFP_KERNEL ;
 int MLX5_FPGA_STATUS_NONE ;
 struct mlx5_fpga_device* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct mlx5_fpga_device *mlx5_fpga_device_alloc(void)
{
 struct mlx5_fpga_device *fdev = ((void*)0);

 fdev = kzalloc(sizeof(*fdev), GFP_KERNEL);
 if (!fdev)
  return ((void*)0);

 spin_lock_init(&fdev->state_lock);
 fdev->state = MLX5_FPGA_STATUS_NONE;
 return fdev;
}
