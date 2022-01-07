
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_icm_pool {scalar_t__ icm_type; } ;
struct mlx5dr_icm_bucket {int sync_list; int hot_list; int used_list; int free_list; int mutex; struct mlx5dr_icm_pool* pool; int num_of_entries; int entry_size; } ;
typedef enum mlx5dr_icm_chunk_size { ____Placeholder_mlx5dr_icm_chunk_size } mlx5dr_icm_chunk_size ;


 scalar_t__ DR_ICM_TYPE_STE ;
 int DR_MODIFY_ACTION_SIZE ;
 int DR_STE_SIZE ;
 int INIT_LIST_HEAD (int *) ;
 int mlx5dr_icm_pool_chunk_size_to_entries (int) ;
 int mutex_init (int *) ;

__attribute__((used)) static void dr_icm_bucket_init(struct mlx5dr_icm_pool *pool,
          struct mlx5dr_icm_bucket *bucket,
          enum mlx5dr_icm_chunk_size chunk_size)
{
 if (pool->icm_type == DR_ICM_TYPE_STE)
  bucket->entry_size = DR_STE_SIZE;
 else
  bucket->entry_size = DR_MODIFY_ACTION_SIZE;

 bucket->num_of_entries = mlx5dr_icm_pool_chunk_size_to_entries(chunk_size);
 bucket->pool = pool;
 mutex_init(&bucket->mutex);
 INIT_LIST_HEAD(&bucket->free_list);
 INIT_LIST_HEAD(&bucket->used_list);
 INIT_LIST_HEAD(&bucket->hot_list);
 INIT_LIST_HEAD(&bucket->sync_list);
}
