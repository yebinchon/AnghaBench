
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;


 int mlx5_accel_is_ktls_device (struct mlx5_core_dev*) ;

__attribute__((used)) static inline bool mlx5_accel_is_tls_device(struct mlx5_core_dev *mdev)
{
 return mlx5_accel_is_ktls_device(mdev);
}
