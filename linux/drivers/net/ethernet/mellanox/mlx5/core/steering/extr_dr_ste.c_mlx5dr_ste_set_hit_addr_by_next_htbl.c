
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5dr_ste_htbl {struct mlx5dr_icm_chunk* chunk; } ;
struct mlx5dr_icm_chunk {int num_of_entries; int icm_addr; } ;


 int mlx5dr_ste_set_hit_addr (int *,int ,int ) ;

void mlx5dr_ste_set_hit_addr_by_next_htbl(u8 *hw_ste,
       struct mlx5dr_ste_htbl *next_htbl)
{
 struct mlx5dr_icm_chunk *chunk = next_htbl->chunk;

 mlx5dr_ste_set_hit_addr(hw_ste, chunk->icm_addr, chunk->num_of_entries);
}
