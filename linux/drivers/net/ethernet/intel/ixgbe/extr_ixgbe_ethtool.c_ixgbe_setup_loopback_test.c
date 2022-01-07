
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int (* write_analog_reg8 ) (struct ixgbe_hw*,int ,int ) ;int (* read_analog_reg8 ) (struct ixgbe_hw*,int ,int *) ;} ;
struct TYPE_4__ {int type; int orig_autoc; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;


 int IXGBE_ATLAS_PDN_10G ;
 int IXGBE_ATLAS_PDN_1G ;
 int IXGBE_ATLAS_PDN_AN ;
 int IXGBE_ATLAS_PDN_LPBK ;
 int IXGBE_ATLAS_PDN_TX_10G_QL_ALL ;
 int IXGBE_ATLAS_PDN_TX_1G_QL_ALL ;
 int IXGBE_ATLAS_PDN_TX_AN_QL_ALL ;
 int IXGBE_ATLAS_PDN_TX_REG_EN ;
 int IXGBE_AUTOC ;
 int IXGBE_AUTOC_FLU ;
 int IXGBE_FCTRL ;
 int IXGBE_FCTRL_BAM ;
 int IXGBE_FCTRL_MPE ;
 int IXGBE_FCTRL_SBP ;
 int IXGBE_HLREG0 ;
 int IXGBE_HLREG0_LPBK ;
 int IXGBE_MACC ;
 int IXGBE_MACC_FLU ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 scalar_t__ ixgbe_mac_82598EB ;




 int stub1 (struct ixgbe_hw*,int ,int *) ;
 int stub2 (struct ixgbe_hw*,int ,int ) ;
 int stub3 (struct ixgbe_hw*,int ,int *) ;
 int stub4 (struct ixgbe_hw*,int ,int ) ;
 int stub5 (struct ixgbe_hw*,int ,int *) ;
 int stub6 (struct ixgbe_hw*,int ,int ) ;
 int stub7 (struct ixgbe_hw*,int ,int *) ;
 int stub8 (struct ixgbe_hw*,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ixgbe_setup_loopback_test(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u32 reg_data;



 reg_data = IXGBE_READ_REG(hw, IXGBE_HLREG0);
 reg_data |= IXGBE_HLREG0_LPBK;
 IXGBE_WRITE_REG(hw, IXGBE_HLREG0, reg_data);

 reg_data = IXGBE_READ_REG(hw, IXGBE_FCTRL);
 reg_data |= IXGBE_FCTRL_BAM | IXGBE_FCTRL_SBP | IXGBE_FCTRL_MPE;
 IXGBE_WRITE_REG(hw, IXGBE_FCTRL, reg_data);


 switch (adapter->hw.mac.type) {
 case 131:
 case 130:
 case 129:
 case 128:
  reg_data = IXGBE_READ_REG(hw, IXGBE_MACC);
  reg_data |= IXGBE_MACC_FLU;
  IXGBE_WRITE_REG(hw, IXGBE_MACC, reg_data);
  break;
 default:
  if (hw->mac.orig_autoc) {
   reg_data = hw->mac.orig_autoc | IXGBE_AUTOC_FLU;
   IXGBE_WRITE_REG(hw, IXGBE_AUTOC, reg_data);
  } else {
   return 10;
  }
 }
 IXGBE_WRITE_FLUSH(hw);
 usleep_range(10000, 20000);


 if (hw->mac.type == ixgbe_mac_82598EB) {
  u8 atlas;

  hw->mac.ops.read_analog_reg8(hw, IXGBE_ATLAS_PDN_LPBK, &atlas);
  atlas |= IXGBE_ATLAS_PDN_TX_REG_EN;
  hw->mac.ops.write_analog_reg8(hw, IXGBE_ATLAS_PDN_LPBK, atlas);

  hw->mac.ops.read_analog_reg8(hw, IXGBE_ATLAS_PDN_10G, &atlas);
  atlas |= IXGBE_ATLAS_PDN_TX_10G_QL_ALL;
  hw->mac.ops.write_analog_reg8(hw, IXGBE_ATLAS_PDN_10G, atlas);

  hw->mac.ops.read_analog_reg8(hw, IXGBE_ATLAS_PDN_1G, &atlas);
  atlas |= IXGBE_ATLAS_PDN_TX_1G_QL_ALL;
  hw->mac.ops.write_analog_reg8(hw, IXGBE_ATLAS_PDN_1G, atlas);

  hw->mac.ops.read_analog_reg8(hw, IXGBE_ATLAS_PDN_AN, &atlas);
  atlas |= IXGBE_ATLAS_PDN_TX_AN_QL_ALL;
  hw->mac.ops.write_analog_reg8(hw, IXGBE_ATLAS_PDN_AN, atlas);
 }

 return 0;
}
