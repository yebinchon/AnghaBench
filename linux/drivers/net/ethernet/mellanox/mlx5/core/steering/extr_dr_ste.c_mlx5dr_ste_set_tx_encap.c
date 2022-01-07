
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DR_STE_ACTION_TYPE_ENCAP ;
 int DR_STE_ACTION_TYPE_ENCAP_L3 ;
 int MLX5_SET (int ,void*,int ,int) ;
 int action_description ;
 int action_type ;
 int encap_pointer_vlan_data ;
 int ste_sx_transmit ;

void mlx5dr_ste_set_tx_encap(void *hw_ste_p, u32 reformat_id, int size, bool encap_l3)
{
 MLX5_SET(ste_sx_transmit, hw_ste_p, action_type,
   encap_l3 ? DR_STE_ACTION_TYPE_ENCAP_L3 : DR_STE_ACTION_TYPE_ENCAP);

 MLX5_SET(ste_sx_transmit, hw_ste_p, action_description, size / 2);
 MLX5_SET(ste_sx_transmit, hw_ste_p, encap_pointer_vlan_data, reformat_id);
}
