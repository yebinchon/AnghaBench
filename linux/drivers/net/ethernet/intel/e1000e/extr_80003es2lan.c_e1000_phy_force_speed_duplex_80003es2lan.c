
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {int forced_speed_duplex; } ;
struct TYPE_3__ {scalar_t__ autoneg_wait_to_complete; } ;
struct e1000_hw {TYPE_2__ mac; TYPE_1__ phy; } ;
typedef scalar_t__ s32 ;


 int BMCR_RESET ;
 int E1000_ALL_10_SPEED ;
 int GG82563_MSCR_ASSERT_CRS_ON_TX ;
 int GG82563_MSCR_TX_CLK_100MBPS_25 ;
 int GG82563_MSCR_TX_CLK_10MBPS_2_5 ;
 int GG82563_MSCR_TX_CLK_MASK ;
 int GG82563_PHY_MAC_SPEC_CTRL ;
 int GG82563_PHY_SPEC_CTRL ;
 int GG82563_PSCR_CROSSOVER_MODE_AUTO ;
 int M88E1000_PHY_SPEC_CTRL ;
 int MII_BMCR ;
 int PHY_FORCE_LIMIT ;
 int e1000e_phy_force_speed_duplex_setup (struct e1000_hw*,int *) ;
 scalar_t__ e1000e_phy_has_link_generic (struct e1000_hw*,int ,int,int*) ;
 scalar_t__ e1000e_phy_reset_dsp (struct e1000_hw*) ;
 scalar_t__ e1e_rphy (struct e1000_hw*,int ,int *) ;
 scalar_t__ e1e_wphy (struct e1000_hw*,int ,int ) ;
 int e_dbg (char*,...) ;
 int udelay (int) ;

__attribute__((used)) static s32 e1000_phy_force_speed_duplex_80003es2lan(struct e1000_hw *hw)
{
 s32 ret_val;
 u16 phy_data;
 bool link;




 ret_val = e1e_rphy(hw, M88E1000_PHY_SPEC_CTRL, &phy_data);
 if (ret_val)
  return ret_val;

 phy_data &= ~GG82563_PSCR_CROSSOVER_MODE_AUTO;
 ret_val = e1e_wphy(hw, GG82563_PHY_SPEC_CTRL, phy_data);
 if (ret_val)
  return ret_val;

 e_dbg("GG82563 PSCR: %X\n", phy_data);

 ret_val = e1e_rphy(hw, MII_BMCR, &phy_data);
 if (ret_val)
  return ret_val;

 e1000e_phy_force_speed_duplex_setup(hw, &phy_data);


 phy_data |= BMCR_RESET;

 ret_val = e1e_wphy(hw, MII_BMCR, phy_data);
 if (ret_val)
  return ret_val;

 udelay(1);

 if (hw->phy.autoneg_wait_to_complete) {
  e_dbg("Waiting for forced speed/duplex link on GG82563 phy.\n");

  ret_val = e1000e_phy_has_link_generic(hw, PHY_FORCE_LIMIT,
            100000, &link);
  if (ret_val)
   return ret_val;

  if (!link) {



   ret_val = e1000e_phy_reset_dsp(hw);
   if (ret_val)
    return ret_val;
  }


  ret_val = e1000e_phy_has_link_generic(hw, PHY_FORCE_LIMIT,
            100000, &link);
  if (ret_val)
   return ret_val;
 }

 ret_val = e1e_rphy(hw, GG82563_PHY_MAC_SPEC_CTRL, &phy_data);
 if (ret_val)
  return ret_val;




 phy_data &= ~GG82563_MSCR_TX_CLK_MASK;
 if (hw->mac.forced_speed_duplex & E1000_ALL_10_SPEED)
  phy_data |= GG82563_MSCR_TX_CLK_10MBPS_2_5;
 else
  phy_data |= GG82563_MSCR_TX_CLK_100MBPS_25;




 phy_data |= GG82563_MSCR_ASSERT_CRS_ON_TX;
 ret_val = e1e_wphy(hw, GG82563_PHY_MAC_SPEC_CTRL, phy_data);

 return ret_val;
}
