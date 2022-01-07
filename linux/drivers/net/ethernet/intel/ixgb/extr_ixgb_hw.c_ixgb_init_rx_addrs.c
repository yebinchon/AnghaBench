
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgb_hw {int curr_mac_addr; } ;


 int ENTER () ;
 int IXGB_RAR_ENTRIES ;
 int IXGB_WRITE_REG_ARRAY (struct ixgb_hw*,int ,int,int ) ;
 int RA ;
 int ixgb_get_ee_mac_addr (struct ixgb_hw*,int ) ;
 int ixgb_rar_set (struct ixgb_hw*,int ,int ) ;
 int mac_addr_valid (int ) ;
 int pr_debug (char*,...) ;

__attribute__((used)) static void
ixgb_init_rx_addrs(struct ixgb_hw *hw)
{
 u32 i;

 ENTER();






 if (!mac_addr_valid(hw->curr_mac_addr)) {


  ixgb_get_ee_mac_addr(hw, hw->curr_mac_addr);

  pr_debug("Keeping Permanent MAC Addr = %pM\n",
    hw->curr_mac_addr);
 } else {


  pr_debug("Overriding MAC Address in RAR[0]\n");
  pr_debug("New MAC Addr = %pM\n", hw->curr_mac_addr);

  ixgb_rar_set(hw, hw->curr_mac_addr, 0);
 }


 pr_debug("Clearing RAR[1-15]\n");
 for (i = 1; i < IXGB_RAR_ENTRIES; i++) {

  IXGB_WRITE_REG_ARRAY(hw, RA, ((i << 1) + 1), 0);
  IXGB_WRITE_REG_ARRAY(hw, RA, (i << 1), 0);
 }
}
