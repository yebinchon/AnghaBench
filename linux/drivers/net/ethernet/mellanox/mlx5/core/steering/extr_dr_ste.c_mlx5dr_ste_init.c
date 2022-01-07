
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int MLX5DR_STE_LU_TYPE_DONT_CARE ;
 int MLX5_SET (int ,int *,int ,int ) ;
 int entry_sub_type ;
 int miss_address_63_48 ;
 int next_lu_type ;
 int next_table_base_63_48 ;
 int ste_general ;
 int ste_rx_steering_mult ;

void mlx5dr_ste_init(u8 *hw_ste_p, u8 lu_type, u8 entry_type,
       u16 gvmi)
{
 MLX5_SET(ste_general, hw_ste_p, entry_type, entry_type);
 MLX5_SET(ste_general, hw_ste_p, entry_sub_type, lu_type);
 MLX5_SET(ste_general, hw_ste_p, next_lu_type, MLX5DR_STE_LU_TYPE_DONT_CARE);




 MLX5_SET(ste_rx_steering_mult, hw_ste_p, gvmi, gvmi);
 MLX5_SET(ste_rx_steering_mult, hw_ste_p, next_table_base_63_48, gvmi);
 MLX5_SET(ste_rx_steering_mult, hw_ste_p, miss_address_63_48, gvmi);
}
