
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_icm_bucket {scalar_t__ hot_list_count; int sync_list_count; int sync_list; int hot_list; } ;


 int list_splice_tail_init (int *,int *) ;

__attribute__((used)) static void dr_icm_chill_bucket_start(struct mlx5dr_icm_bucket *bucket)
{
 list_splice_tail_init(&bucket->hot_list, &bucket->sync_list);
 bucket->sync_list_count += bucket->hot_list_count;
 bucket->hot_list_count = 0;
}
