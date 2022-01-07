
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5dr_ste_htbl {int lu_type; int byte_mask; struct mlx5dr_icm_chunk* chunk; } ;
struct mlx5dr_ste {int * hw_ste; } ;
struct mlx5dr_icm_chunk {int num_of_entries; int icm_addr; } ;
struct dr_hw_ste_format {int dummy; } ;


 int MLX5_SET (int ,int *,int ,int ) ;
 int byte_mask ;
 int dr_ste_set_always_hit (struct dr_hw_ste_format*) ;
 int mlx5dr_ste_set_hit_addr (int *,int ,int ) ;
 int next_lu_type ;
 int ste_general ;

__attribute__((used)) static void dr_ste_always_hit_htbl(struct mlx5dr_ste *ste,
       struct mlx5dr_ste_htbl *next_htbl)
{
 struct mlx5dr_icm_chunk *chunk = next_htbl->chunk;
 u8 *hw_ste = ste->hw_ste;

 MLX5_SET(ste_general, hw_ste, byte_mask, next_htbl->byte_mask);
 MLX5_SET(ste_general, hw_ste, next_lu_type, next_htbl->lu_type);
 mlx5dr_ste_set_hit_addr(hw_ste, chunk->icm_addr, chunk->num_of_entries);

 dr_ste_set_always_hit((struct dr_hw_ste_format *)ste->hw_ste);
}
