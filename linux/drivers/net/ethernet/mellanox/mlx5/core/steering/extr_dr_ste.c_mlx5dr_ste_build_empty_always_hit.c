
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_ste_build {int rx; int * ste_build_tag_func; scalar_t__ byte_mask; int lu_type; } ;


 int MLX5DR_STE_LU_TYPE_DONT_CARE ;
 int dr_ste_build_empty_always_hit_tag ;

void mlx5dr_ste_build_empty_always_hit(struct mlx5dr_ste_build *sb, bool rx)
{
 sb->rx = rx;
 sb->lu_type = MLX5DR_STE_LU_TYPE_DONT_CARE;
 sb->byte_mask = 0;
 sb->ste_build_tag_func = &dr_ste_build_empty_always_hit_tag;
}
