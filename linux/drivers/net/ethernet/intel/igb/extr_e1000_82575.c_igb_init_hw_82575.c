
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct e1000_mac_info {scalar_t__ rar_entry_count; scalar_t__ type; scalar_t__ mta_reg_count; scalar_t__ uta_reg_count; } ;
struct e1000_hw {struct e1000_mac_info mac; } ;
typedef scalar_t__ s32 ;


 int E1000_MTA ;
 int E1000_UTA ;
 int array_wr32 (int ,scalar_t__,int ) ;
 scalar_t__ e1000_i210 ;
 int hw_dbg (char*) ;
 int igb_clear_hw_cntrs_82575 (struct e1000_hw*) ;
 int igb_clear_vfta (struct e1000_hw*) ;
 int igb_get_flash_presence_i210 (struct e1000_hw*) ;
 scalar_t__ igb_id_led_init (struct e1000_hw*) ;
 int igb_init_rx_addrs (struct e1000_hw*,scalar_t__) ;
 scalar_t__ igb_pll_workaround_i210 (struct e1000_hw*) ;
 scalar_t__ igb_setup_link (struct e1000_hw*) ;

__attribute__((used)) static s32 igb_init_hw_82575(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;
 s32 ret_val;
 u16 i, rar_count = mac->rar_entry_count;

 if ((hw->mac.type >= e1000_i210) &&
     !(igb_get_flash_presence_i210(hw))) {
  ret_val = igb_pll_workaround_i210(hw);
  if (ret_val)
   return ret_val;
 }


 ret_val = igb_id_led_init(hw);
 if (ret_val) {
  hw_dbg("Error initializing identification LED\n");

 }


 hw_dbg("Initializing the IEEE VLAN\n");
 igb_clear_vfta(hw);


 igb_init_rx_addrs(hw, rar_count);


 hw_dbg("Zeroing the MTA\n");
 for (i = 0; i < mac->mta_reg_count; i++)
  array_wr32(E1000_MTA, i, 0);


 hw_dbg("Zeroing the UTA\n");
 for (i = 0; i < mac->uta_reg_count; i++)
  array_wr32(E1000_UTA, i, 0);


 ret_val = igb_setup_link(hw);






 igb_clear_hw_cntrs_82575(hw);
 return ret_val;
}
