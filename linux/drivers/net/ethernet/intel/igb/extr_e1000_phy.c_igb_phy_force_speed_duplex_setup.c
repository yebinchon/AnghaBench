
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct e1000_mac_info {int forced_speed_duplex; } ;
struct TYPE_2__ {int current_mode; } ;
struct e1000_hw {TYPE_1__ fc; struct e1000_mac_info mac; } ;


 int E1000_ALL_100_SPEED ;
 int E1000_ALL_HALF_DUPLEX ;
 int E1000_CTRL ;
 int E1000_CTRL_ASDE ;
 int E1000_CTRL_FD ;
 int E1000_CTRL_FRCDPX ;
 int E1000_CTRL_FRCSPD ;
 int E1000_CTRL_SPD_100 ;
 int E1000_CTRL_SPD_1000 ;
 int E1000_CTRL_SPD_SEL ;
 int MII_CR_AUTO_NEG_EN ;
 int MII_CR_FULL_DUPLEX ;
 int MII_CR_SPEED_10 ;
 int MII_CR_SPEED_100 ;
 int MII_CR_SPEED_1000 ;
 int e1000_fc_none ;
 int hw_dbg (char*) ;
 int igb_config_collision_dist (struct e1000_hw*) ;
 int rd32 (int ) ;
 int wr32 (int ,int) ;

__attribute__((used)) static void igb_phy_force_speed_duplex_setup(struct e1000_hw *hw,
          u16 *phy_ctrl)
{
 struct e1000_mac_info *mac = &hw->mac;
 u32 ctrl;


 hw->fc.current_mode = e1000_fc_none;


 ctrl = rd32(E1000_CTRL);
 ctrl |= (E1000_CTRL_FRCSPD | E1000_CTRL_FRCDPX);
 ctrl &= ~E1000_CTRL_SPD_SEL;


 ctrl &= ~E1000_CTRL_ASDE;


 *phy_ctrl &= ~MII_CR_AUTO_NEG_EN;


 if (mac->forced_speed_duplex & E1000_ALL_HALF_DUPLEX) {
  ctrl &= ~E1000_CTRL_FD;
  *phy_ctrl &= ~MII_CR_FULL_DUPLEX;
  hw_dbg("Half Duplex\n");
 } else {
  ctrl |= E1000_CTRL_FD;
  *phy_ctrl |= MII_CR_FULL_DUPLEX;
  hw_dbg("Full Duplex\n");
 }


 if (mac->forced_speed_duplex & E1000_ALL_100_SPEED) {
  ctrl |= E1000_CTRL_SPD_100;
  *phy_ctrl |= MII_CR_SPEED_100;
  *phy_ctrl &= ~(MII_CR_SPEED_1000 | MII_CR_SPEED_10);
  hw_dbg("Forcing 100mb\n");
 } else {
  ctrl &= ~(E1000_CTRL_SPD_1000 | E1000_CTRL_SPD_100);
  *phy_ctrl |= MII_CR_SPEED_10;
  *phy_ctrl &= ~(MII_CR_SPEED_1000 | MII_CR_SPEED_100);
  hw_dbg("Forcing 10mb\n");
 }

 igb_config_collision_dist(hw);

 wr32(E1000_CTRL, ctrl);
}
