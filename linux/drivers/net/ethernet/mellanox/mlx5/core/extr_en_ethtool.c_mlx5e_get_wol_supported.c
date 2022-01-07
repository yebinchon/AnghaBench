
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;
typedef int __u32 ;


 scalar_t__ MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int WAKE_ARP ;
 int WAKE_BCAST ;
 int WAKE_MAGIC ;
 int WAKE_MAGICSECURE ;
 int WAKE_MCAST ;
 int WAKE_PHY ;
 int WAKE_UCAST ;
 int wol_a ;
 int wol_b ;
 int wol_g ;
 int wol_m ;
 int wol_p ;
 int wol_s ;
 int wol_u ;

__attribute__((used)) static __u32 mlx5e_get_wol_supported(struct mlx5_core_dev *mdev)
{
 __u32 ret = 0;

 if (MLX5_CAP_GEN(mdev, wol_g))
  ret |= WAKE_MAGIC;

 if (MLX5_CAP_GEN(mdev, wol_s))
  ret |= WAKE_MAGICSECURE;

 if (MLX5_CAP_GEN(mdev, wol_a))
  ret |= WAKE_ARP;

 if (MLX5_CAP_GEN(mdev, wol_b))
  ret |= WAKE_BCAST;

 if (MLX5_CAP_GEN(mdev, wol_m))
  ret |= WAKE_MCAST;

 if (MLX5_CAP_GEN(mdev, wol_u))
  ret |= WAKE_UCAST;

 if (MLX5_CAP_GEN(mdev, wol_p))
  ret |= WAKE_PHY;

 return ret;
}
