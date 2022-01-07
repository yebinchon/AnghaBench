
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* get_media_type ) (struct ixgbe_hw*) ;int * setup_fc; int fc_autoneg; int check_link; int setup_link; } ;
struct ixgbe_mac_info {TYPE_1__ ops; } ;
struct ixgbe_hw {int device_id; struct ixgbe_mac_info mac; } ;


 int IXGBE_DEV_ID_X550EM_A_1G_T ;
 int IXGBE_DEV_ID_X550EM_A_1G_T_L ;
 int ixgbe_check_mac_link_generic ;
 int ixgbe_fc_autoneg_backplane_x550em_a ;
 int ixgbe_fc_autoneg_fiber_x550em_a ;
 int * ixgbe_fc_autoneg_fw ;
 int ixgbe_fc_autoneg_sgmii_x550em_a ;



 int * ixgbe_setup_fc_backplane_x550em_a ;
 int ixgbe_setup_mac_link_t_X550em ;
 int ixgbe_setup_sgmii_fw ;
 int stub1 (struct ixgbe_hw*) ;

__attribute__((used)) static void ixgbe_init_mac_link_ops_X550em_a(struct ixgbe_hw *hw)
{
 struct ixgbe_mac_info *mac = &hw->mac;

 switch (mac->ops.get_media_type(hw)) {
 case 128:
  mac->ops.setup_fc = ((void*)0);
  mac->ops.fc_autoneg = ixgbe_fc_autoneg_fiber_x550em_a;
  break;
 case 129:
  if (hw->device_id != IXGBE_DEV_ID_X550EM_A_1G_T &&
      hw->device_id != IXGBE_DEV_ID_X550EM_A_1G_T_L) {
   mac->ops.setup_link = ixgbe_setup_mac_link_t_X550em;
   break;
  }
  mac->ops.fc_autoneg = ixgbe_fc_autoneg_sgmii_x550em_a;
  mac->ops.setup_fc = ixgbe_fc_autoneg_fw;
  mac->ops.setup_link = ixgbe_setup_sgmii_fw;
  mac->ops.check_link = ixgbe_check_mac_link_generic;
  break;
 case 130:
  mac->ops.fc_autoneg = ixgbe_fc_autoneg_backplane_x550em_a;
  mac->ops.setup_fc = ixgbe_setup_fc_backplane_x550em_a;
  break;
 default:
  break;
 }
}
