
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct mlx5dr_icm_pool {int dummy; } ;
struct mlx5dr_icm_bucket {int hot_list_count; } ;


 scalar_t__ DR_ICM_SYNC_THRESHOLD ;
 scalar_t__ dr_icm_hot_mem_size (struct mlx5dr_icm_pool*) ;

__attribute__((used)) static bool dr_icm_reuse_hot_entries(struct mlx5dr_icm_pool *pool,
         struct mlx5dr_icm_bucket *bucket)
{
 u64 bytes_for_sync;

 bytes_for_sync = dr_icm_hot_mem_size(pool);
 if (bytes_for_sync < DR_ICM_SYNC_THRESHOLD || !bucket->hot_list_count)
  return 0;

 return 1;
}
