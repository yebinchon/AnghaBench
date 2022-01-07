
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_icm_bucket {scalar_t__ sync_list_count; int hot_list_count; int hot_list; int sync_list; } ;


 int list_splice_tail_init (int *,int *) ;

__attribute__((used)) static void dr_icm_chill_bucket_abort(struct mlx5dr_icm_bucket *bucket)
{
 list_splice_tail_init(&bucket->sync_list, &bucket->hot_list);
 bucket->hot_list_count += bucket->sync_list_count;
 bucket->sync_list_count = 0;
}
