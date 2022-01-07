
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct igc_mac_info {scalar_t__ rar_entry_count; scalar_t__ mta_reg_count; scalar_t__ uta_reg_count; } ;
struct igc_hw {struct igc_mac_info mac; } ;
typedef int s32 ;


 int IGC_MTA ;
 int IGC_UTA ;
 int array_wr32 (int ,scalar_t__,int ) ;
 int hw_dbg (char*) ;
 int igc_clear_hw_cntrs_base (struct igc_hw*) ;
 int igc_init_rx_addrs (struct igc_hw*,scalar_t__) ;
 int igc_setup_link (struct igc_hw*) ;

__attribute__((used)) static s32 igc_init_hw_base(struct igc_hw *hw)
{
 struct igc_mac_info *mac = &hw->mac;
 u16 i, rar_count = mac->rar_entry_count;
 s32 ret_val = 0;


 igc_init_rx_addrs(hw, rar_count);


 hw_dbg("Zeroing the MTA\n");
 for (i = 0; i < mac->mta_reg_count; i++)
  array_wr32(IGC_MTA, i, 0);


 hw_dbg("Zeroing the UTA\n");
 for (i = 0; i < mac->uta_reg_count; i++)
  array_wr32(IGC_UTA, i, 0);


 ret_val = igc_setup_link(hw);






 igc_clear_hw_cntrs_base(hw);

 return ret_val;
}
