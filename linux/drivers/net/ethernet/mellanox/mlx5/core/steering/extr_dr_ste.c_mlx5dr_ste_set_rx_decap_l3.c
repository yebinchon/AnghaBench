
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int DR_STE_TUNL_ACTION_L3_DECAP ;
 int MLX5_SET (int ,int *,int ,int) ;
 int action_description ;
 int ste_modify_packet ;
 int ste_rx_steering_mult ;
 int tunneling_action ;

void mlx5dr_ste_set_rx_decap_l3(u8 *hw_ste_p, bool vlan)
{
 MLX5_SET(ste_rx_steering_mult, hw_ste_p, tunneling_action,
   DR_STE_TUNL_ACTION_L3_DECAP);
 MLX5_SET(ste_modify_packet, hw_ste_p, action_description, vlan ? 1 : 0);
}
