
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_icm_chunk {int ste_arr; int hw_ste_arr; int miss_list; } ;


 int kvfree (int ) ;

__attribute__((used)) static void dr_icm_chunk_ste_cleanup(struct mlx5dr_icm_chunk *chunk)
{
 kvfree(chunk->miss_list);
 kvfree(chunk->hw_ste_arr);
 kvfree(chunk->ste_arr);
}
