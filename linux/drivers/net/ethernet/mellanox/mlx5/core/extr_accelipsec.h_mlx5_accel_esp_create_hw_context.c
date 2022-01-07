
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;
struct mlx5_accel_esp_xfrm {int dummy; } ;
typedef int __be32 ;



__attribute__((used)) static inline void *
mlx5_accel_esp_create_hw_context(struct mlx5_core_dev *mdev,
     struct mlx5_accel_esp_xfrm *xfrm,
     const __be32 saddr[4],
     const __be32 daddr[4],
     const __be32 spi, bool is_ipv6)
{
 return ((void*)0);
}
