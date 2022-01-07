
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;


 int MLX5_ADAPTER_PAGE_SIZE ;
 int MLX5_BFREGS_PER_UAR ;
 unsigned long MLX5_BF_OFFSET ;
 int MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int log_bf_reg_size ;

__attribute__((used)) static unsigned long map_offset(struct mlx5_core_dev *mdev, int dbi)
{



 return dbi / MLX5_BFREGS_PER_UAR * MLX5_ADAPTER_PAGE_SIZE +
        (dbi % MLX5_BFREGS_PER_UAR) *
        (1 << MLX5_CAP_GEN(mdev, log_bf_reg_size)) + MLX5_BF_OFFSET;
}
