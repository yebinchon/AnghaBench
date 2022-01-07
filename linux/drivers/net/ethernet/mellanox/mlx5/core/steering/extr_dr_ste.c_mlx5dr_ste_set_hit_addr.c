
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;


 int MLX5_SET (int ,int *,int ,int) ;
 int next_table_base_31_5_size ;
 int next_table_base_39_32_size ;
 int ste_general ;

void mlx5dr_ste_set_hit_addr(u8 *hw_ste, u64 icm_addr, u32 ht_size)
{
 u64 index = (icm_addr >> 5) | ht_size;

 MLX5_SET(ste_general, hw_ste, next_table_base_39_32_size, index >> 27);
 MLX5_SET(ste_general, hw_ste, next_table_base_31_5_size, index);
}
