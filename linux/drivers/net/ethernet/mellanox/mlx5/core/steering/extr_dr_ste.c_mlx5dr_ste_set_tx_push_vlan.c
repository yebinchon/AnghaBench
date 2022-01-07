
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int DR_STE_ACTION_TYPE_PUSH_VLAN ;
 int MLX5_SET (int ,int *,int ,int ) ;
 int action_type ;
 int encap_pointer_vlan_data ;
 int mlx5dr_ste_set_go_back_bit (int *) ;
 int ste_sx_transmit ;

void mlx5dr_ste_set_tx_push_vlan(u8 *hw_ste_p, u32 vlan_hdr,
     bool go_back)
{
 MLX5_SET(ste_sx_transmit, hw_ste_p, action_type,
   DR_STE_ACTION_TYPE_PUSH_VLAN);
 MLX5_SET(ste_sx_transmit, hw_ste_p, encap_pointer_vlan_data, vlan_hdr);



 if (go_back)
  mlx5dr_ste_set_go_back_bit(hw_ste_p);
}
