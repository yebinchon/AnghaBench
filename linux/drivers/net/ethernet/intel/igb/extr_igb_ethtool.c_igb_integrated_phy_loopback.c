
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ type; scalar_t__ id; } ;
struct TYPE_3__ {int autoneg; } ;
struct e1000_hw {TYPE_2__ phy; TYPE_1__ mac; } ;
struct igb_adapter {struct e1000_hw hw; } ;


 int E1000_CTRL ;
 int E1000_CTRL_FD ;
 int E1000_CTRL_FRCDPX ;
 int E1000_CTRL_FRCSPD ;
 int E1000_CTRL_ILOS ;
 int E1000_CTRL_SLU ;
 int E1000_CTRL_SPD_1000 ;
 int E1000_CTRL_SPD_SEL ;
 scalar_t__ I210_I_PHY_ID ;
 int I347AT4_PAGE_SELECT ;
 int I82580_PHY_LBK_CTRL ;
 int M88E1000_PHY_SPEC_CTRL ;
 int PHY_CONTROL ;
 scalar_t__ e1000_phy_82580 ;
 scalar_t__ e1000_phy_m88 ;
 int igb_phy_disable_receiver (struct igb_adapter*) ;
 int igb_write_phy_reg (struct e1000_hw*,int ,int) ;
 int msleep (int) ;
 int rd32 (int ) ;
 int wr32 (int ,int) ;

__attribute__((used)) static int igb_integrated_phy_loopback(struct igb_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 ctrl_reg = 0;

 hw->mac.autoneg = 0;

 if (hw->phy.type == e1000_phy_m88) {
  if (hw->phy.id != I210_I_PHY_ID) {

   igb_write_phy_reg(hw, M88E1000_PHY_SPEC_CTRL, 0x0808);

   igb_write_phy_reg(hw, PHY_CONTROL, 0x9140);

   igb_write_phy_reg(hw, PHY_CONTROL, 0x8140);
  } else {

   igb_write_phy_reg(hw, I347AT4_PAGE_SELECT, 0);
   igb_write_phy_reg(hw, PHY_CONTROL, 0x4140);
  }
 } else if (hw->phy.type == e1000_phy_82580) {

  igb_write_phy_reg(hw, I82580_PHY_LBK_CTRL, 0x8041);
 }


 msleep(50);


 igb_write_phy_reg(hw, PHY_CONTROL, 0x4140);


 ctrl_reg = rd32(E1000_CTRL);
 ctrl_reg &= ~E1000_CTRL_SPD_SEL;
 ctrl_reg |= (E1000_CTRL_FRCSPD |
       E1000_CTRL_FRCDPX |
       E1000_CTRL_SPD_1000 |
       E1000_CTRL_FD |
       E1000_CTRL_SLU);

 if (hw->phy.type == e1000_phy_m88)
  ctrl_reg |= E1000_CTRL_ILOS;

 wr32(E1000_CTRL, ctrl_reg);




 if (hw->phy.type == e1000_phy_m88)
  igb_phy_disable_receiver(adapter);

 msleep(500);
 return 0;
}
