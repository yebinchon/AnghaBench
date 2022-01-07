
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_sq_bfreg {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;


 int EAGAIN ;
 int alloc_bfreg (struct mlx5_core_dev*,struct mlx5_sq_bfreg*,int,int) ;

int mlx5_alloc_bfreg(struct mlx5_core_dev *mdev, struct mlx5_sq_bfreg *bfreg,
       bool map_wc, bool fast_path)
{
 int err;

 err = alloc_bfreg(mdev, bfreg, map_wc, fast_path);
 if (!err)
  return 0;

 if (err == -EAGAIN && map_wc)
  return alloc_bfreg(mdev, bfreg, 0, fast_path);

 return err;
}
