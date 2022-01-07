
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct mlx5_core_dev {int bar_addr; } ;


 int MLX5_ADAPTER_PAGE_SHIFT ;
 scalar_t__ MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int PAGE_SHIFT ;
 int uar_4k ;

__attribute__((used)) static u64 uar2pfn(struct mlx5_core_dev *mdev, u32 index)
{
 u32 system_page_index;

 if (MLX5_CAP_GEN(mdev, uar_4k))
  system_page_index = index >> (PAGE_SHIFT - MLX5_ADAPTER_PAGE_SHIFT);
 else
  system_page_index = index;

 return (mdev->bar_addr >> PAGE_SHIFT) + system_page_index;
}
