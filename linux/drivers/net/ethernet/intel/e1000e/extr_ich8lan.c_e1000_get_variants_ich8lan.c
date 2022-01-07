
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * blink_led; } ;
struct TYPE_6__ {int type; TYPE_1__ ops; } ;
struct TYPE_5__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_3__ mac; TYPE_2__ phy; } ;
struct e1000_adapter {int flags2; struct e1000_hw hw; int flags; scalar_t__ max_hw_frame_size; } ;
typedef scalar_t__ s32 ;


 int CTRL_EXT ;
 int E1000_CTRL_EXT_LSECCK ;
 int E1000_ICH_FWSM_FW_VALID ;
 scalar_t__ ETH_FCS_LEN ;
 int FLAG2_PCIM2PCI_ARBITER_WA ;
 int FLAG_HAS_JUMBO_FRAMES ;
 int FLAG_LSC_GIG_SPEED_DROP ;
 int FWSM ;
 scalar_t__ VLAN_ETH_FRAME_LEN ;



 scalar_t__ e1000_init_mac_params_ich8lan (struct e1000_hw*) ;
 scalar_t__ e1000_init_nvm_params_ich8lan (struct e1000_hw*) ;
 scalar_t__ e1000_init_phy_params_ich8lan (struct e1000_hw*) ;
 scalar_t__ e1000_init_phy_params_pchlan (struct e1000_hw*) ;





 scalar_t__ e1000_phy_ife ;
 int er32 (int ) ;

__attribute__((used)) static s32 e1000_get_variants_ich8lan(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 s32 rc;

 rc = e1000_init_mac_params_ich8lan(hw);
 if (rc)
  return rc;

 rc = e1000_init_nvm_params_ich8lan(hw);
 if (rc)
  return rc;

 switch (hw->mac.type) {
 case 134:
 case 133:
 case 135:
  rc = e1000_init_phy_params_ich8lan(hw);
  break;
 case 128:
 case 132:
 case 130:
 case 129:
 case 131:
  rc = e1000_init_phy_params_pchlan(hw);
  break;
 default:
  break;
 }
 if (rc)
  return rc;




 if ((adapter->hw.phy.type == e1000_phy_ife) ||
     ((adapter->hw.mac.type >= 132) &&
      (!(er32(CTRL_EXT) & E1000_CTRL_EXT_LSECCK)))) {
  adapter->flags &= ~FLAG_HAS_JUMBO_FRAMES;
  adapter->max_hw_frame_size = VLAN_ETH_FRAME_LEN + ETH_FCS_LEN;

  hw->mac.ops.blink_led = ((void*)0);
 }

 if ((adapter->hw.mac.type == 134) &&
     (adapter->hw.phy.type != e1000_phy_ife))
  adapter->flags |= FLAG_LSC_GIG_SPEED_DROP;


 if ((adapter->hw.mac.type == 132) &&
     (er32(FWSM) & E1000_ICH_FWSM_FW_VALID))
  adapter->flags2 |= FLAG2_PCIM2PCI_ARBITER_WA;

 return 0;
}
