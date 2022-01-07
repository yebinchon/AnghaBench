
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5dr_icm_chunk {int chunk_list; struct mlx5dr_icm_bucket* bucket; } ;
struct mlx5dr_icm_bucket {TYPE_1__* pool; int total_chunks; } ;
struct TYPE_2__ {scalar_t__ icm_type; } ;


 scalar_t__ DR_ICM_TYPE_STE ;
 int dr_icm_chunk_ste_cleanup (struct mlx5dr_icm_chunk*) ;
 int kvfree (struct mlx5dr_icm_chunk*) ;
 int list_del (int *) ;

__attribute__((used)) static void dr_icm_chunk_destroy(struct mlx5dr_icm_chunk *chunk)
{
 struct mlx5dr_icm_bucket *bucket = chunk->bucket;

 list_del(&chunk->chunk_list);
 bucket->total_chunks--;

 if (bucket->pool->icm_type == DR_ICM_TYPE_STE)
  dr_icm_chunk_ste_cleanup(chunk);

 kvfree(chunk);
}
