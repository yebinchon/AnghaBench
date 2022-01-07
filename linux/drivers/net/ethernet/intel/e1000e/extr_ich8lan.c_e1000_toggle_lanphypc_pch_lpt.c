
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;


 int CTRL ;
 int CTRL_EXT ;
 int E1000_CTRL_EXT_LPCD ;
 int E1000_CTRL_LANPHYPC_OVERRIDE ;
 int E1000_CTRL_LANPHYPC_VALUE ;
 int E1000_FEXTNVM3_PHY_CFG_COUNTER_50MSEC ;
 int E1000_FEXTNVM3_PHY_CFG_COUNTER_MASK ;
 int FEXTNVM3 ;
 scalar_t__ e1000_pch_lpt ;
 int e1e_flush () ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int msleep (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void e1000_toggle_lanphypc_pch_lpt(struct e1000_hw *hw)
{
 u32 mac_reg;


 mac_reg = er32(FEXTNVM3);
 mac_reg &= ~E1000_FEXTNVM3_PHY_CFG_COUNTER_MASK;
 mac_reg |= E1000_FEXTNVM3_PHY_CFG_COUNTER_50MSEC;
 ew32(FEXTNVM3, mac_reg);


 mac_reg = er32(CTRL);
 mac_reg |= E1000_CTRL_LANPHYPC_OVERRIDE;
 mac_reg &= ~E1000_CTRL_LANPHYPC_VALUE;
 ew32(CTRL, mac_reg);
 e1e_flush();
 usleep_range(10, 20);
 mac_reg &= ~E1000_CTRL_LANPHYPC_OVERRIDE;
 ew32(CTRL, mac_reg);
 e1e_flush();

 if (hw->mac.type < e1000_pch_lpt) {
  msleep(50);
 } else {
  u16 count = 20;

  do {
   usleep_range(5000, 6000);
  } while (!(er32(CTRL_EXT) & E1000_CTRL_EXT_LPCD) && count--);

  msleep(30);
 }
}
