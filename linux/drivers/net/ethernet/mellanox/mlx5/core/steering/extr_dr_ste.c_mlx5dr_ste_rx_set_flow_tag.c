
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int DR_STE_ENABLE_FLOW_TAG ;
 int MLX5_SET (int ,int *,int ,int) ;
 int qp_list_pointer ;
 int ste_rx_steering_mult ;

void mlx5dr_ste_rx_set_flow_tag(u8 *hw_ste_p, u32 flow_tag)
{
 MLX5_SET(ste_rx_steering_mult, hw_ste_p, qp_list_pointer,
   DR_STE_ENABLE_FLOW_TAG | flow_tag);
}
