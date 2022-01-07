
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlx5_dm {struct mlx5_dm* steering_sw_icm_alloc_blocks; void* header_modify_sw_icm_alloc_blocks; int lock; } ;
struct mlx5_core_dev {int dummy; } ;


 int BIT (scalar_t__) ;
 int BITS_TO_LONGS (int ) ;
 int ENOMEM ;
 struct mlx5_dm* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ MLX5_CAP64_DEV_MEM (struct mlx5_core_dev*,int ) ;
 scalar_t__ MLX5_CAP_DEV_MEM (struct mlx5_core_dev*,int ) ;
 int MLX5_CAP_GEN_64 (struct mlx5_core_dev*,int ) ;
 int MLX5_GENERAL_OBJ_TYPES_CAP_SW_ICM ;
 scalar_t__ MLX5_LOG_SW_ICM_BLOCK_SIZE (struct mlx5_core_dev*) ;
 int general_obj_types ;
 int header_modify_sw_icm_start_address ;
 void* kcalloc (int ,int,int ) ;
 int kfree (struct mlx5_dm*) ;
 struct mlx5_dm* kzalloc (int,int ) ;
 int log_header_modify_sw_icm_size ;
 int log_steering_sw_icm_size ;
 int spin_lock_init (int *) ;
 int steering_sw_icm_start_address ;

struct mlx5_dm *mlx5_dm_create(struct mlx5_core_dev *dev)
{
 u64 header_modify_icm_blocks = 0;
 u64 steering_icm_blocks = 0;
 struct mlx5_dm *dm;

 if (!(MLX5_CAP_GEN_64(dev, general_obj_types) & MLX5_GENERAL_OBJ_TYPES_CAP_SW_ICM))
  return 0;

 dm = kzalloc(sizeof(*dm), GFP_KERNEL);
 if (!dm)
  return ERR_PTR(-ENOMEM);

 spin_lock_init(&dm->lock);

 if (MLX5_CAP64_DEV_MEM(dev, steering_sw_icm_start_address)) {
  steering_icm_blocks =
   BIT(MLX5_CAP_DEV_MEM(dev, log_steering_sw_icm_size) -
       MLX5_LOG_SW_ICM_BLOCK_SIZE(dev));

  dm->steering_sw_icm_alloc_blocks =
   kcalloc(BITS_TO_LONGS(steering_icm_blocks),
    sizeof(unsigned long), GFP_KERNEL);
  if (!dm->steering_sw_icm_alloc_blocks)
   goto err_steering;
 }

 if (MLX5_CAP64_DEV_MEM(dev, header_modify_sw_icm_start_address)) {
  header_modify_icm_blocks =
   BIT(MLX5_CAP_DEV_MEM(dev, log_header_modify_sw_icm_size) -
       MLX5_LOG_SW_ICM_BLOCK_SIZE(dev));

  dm->header_modify_sw_icm_alloc_blocks =
   kcalloc(BITS_TO_LONGS(header_modify_icm_blocks),
    sizeof(unsigned long), GFP_KERNEL);
  if (!dm->header_modify_sw_icm_alloc_blocks)
   goto err_modify_hdr;
 }

 return dm;

err_modify_hdr:
 kfree(dm->steering_sw_icm_alloc_blocks);

err_steering:
 kfree(dm);

 return ERR_PTR(-ENOMEM);
}
