
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int autoneg; scalar_t__ phy_type; scalar_t__ media_type; } ;
struct e1000_adapter {struct e1000_hw hw; } ;


 int CTRL ;
 int E1000_CTRL_FD ;
 int E1000_CTRL_FRCDPX ;
 int E1000_CTRL_FRCSPD ;
 int E1000_CTRL_ILOS ;
 int E1000_CTRL_SLU ;
 int E1000_CTRL_SPD_1000 ;
 int E1000_CTRL_SPD_SEL ;
 int E1000_STATUS_FD ;
 int M88E1000_PHY_SPEC_CTRL ;
 int PHY_CTRL ;
 int STATUS ;
 scalar_t__ e1000_media_type_copper ;
 int e1000_phy_disable_receiver (struct e1000_adapter*) ;
 scalar_t__ e1000_phy_m88 ;
 int e1000_write_phy_reg (struct e1000_hw*,int ,int) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int e1000_integrated_phy_loopback(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 ctrl_reg = 0;
 u32 stat_reg = 0;

 hw->autoneg = 0;

 if (hw->phy_type == e1000_phy_m88) {

  e1000_write_phy_reg(hw,
        M88E1000_PHY_SPEC_CTRL, 0x0808);

  e1000_write_phy_reg(hw, PHY_CTRL, 0x9140);

  e1000_write_phy_reg(hw, PHY_CTRL, 0x8140);
 }

 ctrl_reg = er32(CTRL);


 e1000_write_phy_reg(hw, PHY_CTRL, 0x4140);


 ctrl_reg = er32(CTRL);
 ctrl_reg &= ~E1000_CTRL_SPD_SEL;
 ctrl_reg |= (E1000_CTRL_FRCSPD |
   E1000_CTRL_FRCDPX |
   E1000_CTRL_SPD_1000 |
   E1000_CTRL_FD);

 if (hw->media_type == e1000_media_type_copper &&
     hw->phy_type == e1000_phy_m88)
  ctrl_reg |= E1000_CTRL_ILOS;
 else {



  stat_reg = er32(STATUS);
  if ((stat_reg & E1000_STATUS_FD) == 0)
   ctrl_reg |= (E1000_CTRL_ILOS | E1000_CTRL_SLU);
 }

 ew32(CTRL, ctrl_reg);




 if (hw->phy_type == e1000_phy_m88)
  e1000_phy_disable_receiver(adapter);

 udelay(500);

 return 0;
}
