
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_dm {struct mlx5_dm* header_modify_sw_icm_alloc_blocks; struct mlx5_dm* steering_sw_icm_alloc_blocks; } ;
struct mlx5_core_dev {struct mlx5_dm* dm; } ;


 int BIT (scalar_t__) ;
 scalar_t__ MLX5_CAP_DEV_MEM (struct mlx5_core_dev*,int ) ;
 scalar_t__ MLX5_LOG_SW_ICM_BLOCK_SIZE (struct mlx5_core_dev*) ;
 int WARN_ON (int) ;
 int bitmap_empty (struct mlx5_dm*,int ) ;
 int kfree (struct mlx5_dm*) ;
 int log_header_modify_sw_icm_size ;
 int log_steering_sw_icm_size ;

void mlx5_dm_cleanup(struct mlx5_core_dev *dev)
{
 struct mlx5_dm *dm = dev->dm;

 if (!dev->dm)
  return;

 if (dm->steering_sw_icm_alloc_blocks) {
  WARN_ON(!bitmap_empty(dm->steering_sw_icm_alloc_blocks,
          BIT(MLX5_CAP_DEV_MEM(dev, log_steering_sw_icm_size) -
       MLX5_LOG_SW_ICM_BLOCK_SIZE(dev))));
  kfree(dm->steering_sw_icm_alloc_blocks);
 }

 if (dm->header_modify_sw_icm_alloc_blocks) {
  WARN_ON(!bitmap_empty(dm->header_modify_sw_icm_alloc_blocks,
          BIT(MLX5_CAP_DEV_MEM(dev,
          log_header_modify_sw_icm_size) -
          MLX5_LOG_SW_ICM_BLOCK_SIZE(dev))));
  kfree(dm->header_modify_sw_icm_alloc_blocks);
 }

 kfree(dm);
}
