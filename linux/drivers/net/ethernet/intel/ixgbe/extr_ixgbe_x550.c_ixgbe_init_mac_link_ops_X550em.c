
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* get_media_type ) (struct ixgbe_hw*) ;int setup_link; int check_link; int setup_fc; int set_rate_select_speed; int setup_mac_link; int * flap_tx_laser; int * enable_tx_laser; int * disable_tx_laser; } ;
struct ixgbe_mac_info {scalar_t__ type; TYPE_1__ ops; } ;
struct ixgbe_hw {struct ixgbe_mac_info mac; int device_id; } ;




 int IXGBE_DEV_ID_X550EM_A_SGMII ;
 int IXGBE_DEV_ID_X550EM_A_SGMII_L ;
 int IXGBE_DEV_ID_X550EM_X_1G_T ;
 int ixgbe_check_link_t_X550em ;
 int ixgbe_init_mac_link_ops_X550em_a (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_mac_x550em_a ;



 int ixgbe_set_soft_rate_select_speed ;
 int ixgbe_setup_fc_generic ;
 int ixgbe_setup_fc_x550em ;
 int ixgbe_setup_mac_link_multispeed_fiber ;
 int ixgbe_setup_mac_link_sfp_n ;
 int ixgbe_setup_mac_link_sfp_x550a ;
 int ixgbe_setup_mac_link_sfp_x550em ;
 int ixgbe_setup_mac_link_t_X550em ;
 int ixgbe_setup_sgmii ;
 int stub1 (struct ixgbe_hw*) ;

__attribute__((used)) static void ixgbe_init_mac_link_ops_X550em(struct ixgbe_hw *hw)
{
 struct ixgbe_mac_info *mac = &hw->mac;

 mac->ops.setup_fc = ixgbe_setup_fc_x550em;

 switch (mac->ops.get_media_type(hw)) {
 case 128:



  mac->ops.disable_tx_laser = ((void*)0);
  mac->ops.enable_tx_laser = ((void*)0);
  mac->ops.flap_tx_laser = ((void*)0);
  mac->ops.setup_link = ixgbe_setup_mac_link_multispeed_fiber;
  switch (hw->device_id) {
  case 131:
   mac->ops.setup_mac_link = ixgbe_setup_mac_link_sfp_n;
   break;
  case 132:
   mac->ops.setup_mac_link =
      ixgbe_setup_mac_link_sfp_x550a;
   break;
  default:
   mac->ops.setup_mac_link =
      ixgbe_setup_mac_link_sfp_x550em;
   break;
  }
  mac->ops.set_rate_select_speed =
     ixgbe_set_soft_rate_select_speed;
  break;
 case 129:
  if (hw->device_id == IXGBE_DEV_ID_X550EM_X_1G_T)
   break;
  mac->ops.setup_link = ixgbe_setup_mac_link_t_X550em;
  mac->ops.setup_fc = ixgbe_setup_fc_generic;
  mac->ops.check_link = ixgbe_check_link_t_X550em;
  break;
 case 130:
  if (hw->device_id == IXGBE_DEV_ID_X550EM_A_SGMII ||
      hw->device_id == IXGBE_DEV_ID_X550EM_A_SGMII_L)
   mac->ops.setup_link = ixgbe_setup_sgmii;
  break;
 default:
  break;
 }


 if (hw->mac.type == ixgbe_mac_x550em_a)
  ixgbe_init_mac_link_ops_X550em_a(hw);
}
