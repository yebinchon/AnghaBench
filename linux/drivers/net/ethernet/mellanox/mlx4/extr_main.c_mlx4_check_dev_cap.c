
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_dev_cap {int flags2; } ;
struct mlx4_dev {int dummy; } ;


 int MLX4_DEV_CAP_CHECK_NUM_VFS_ABOVE_64 ;
 int MLX4_DEV_CAP_FLAG2_80_VFS ;
 int mlx4_err (struct mlx4_dev*,char*,int) ;

__attribute__((used)) static int mlx4_check_dev_cap(struct mlx4_dev *dev, struct mlx4_dev_cap *dev_cap,
         int *nvfs)
{
 int requested_vfs = nvfs[0] + nvfs[1] + nvfs[2];

 if (!(dev_cap->flags2 & MLX4_DEV_CAP_FLAG2_80_VFS) &&
     requested_vfs >= 64) {
  mlx4_err(dev, "Requested %d VFs, but FW does not support more than 64\n",
    requested_vfs);
  return MLX4_DEV_CAP_CHECK_NUM_VFS_ABOVE_64;
 }
 return 0;
}
