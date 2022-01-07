
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct mlx5dr_ste {int * hw_ste; } ;
struct dr_hw_ste_format {int dummy; } ;


 int MLX5DR_STE_LU_TYPE_DONT_CARE ;
 int MLX5_SET (int ,int *,int ,int ) ;
 int dr_ste_set_always_miss (struct dr_hw_ste_format*) ;
 int mlx5dr_ste_set_miss_addr (int *,int ) ;
 int next_lu_type ;
 int ste_rx_steering_mult ;

void mlx5dr_ste_always_miss_addr(struct mlx5dr_ste *ste, u64 miss_addr)
{
 u8 *hw_ste = ste->hw_ste;

 MLX5_SET(ste_rx_steering_mult, hw_ste, next_lu_type, MLX5DR_STE_LU_TYPE_DONT_CARE);
 mlx5dr_ste_set_miss_addr(hw_ste, miss_addr);
 dr_ste_set_always_miss((struct dr_hw_ste_format *)ste->hw_ste);
}
