
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int MLX5_SET (int ,int *,int ,int ) ;
 int next_table_base_63_48 ;
 int ste_general ;

void mlx5dr_ste_set_hit_gvmi(u8 *hw_ste_p, u16 gvmi)
{
 MLX5_SET(ste_general, hw_ste_p, next_table_base_63_48, gvmi);
}
