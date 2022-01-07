
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ igb_check_alt_mac_addr (struct e1000_hw*) ;
 scalar_t__ igb_read_mac_addr (struct e1000_hw*) ;

__attribute__((used)) static s32 igb_read_mac_addr_82575(struct e1000_hw *hw)
{
 s32 ret_val = 0;





 ret_val = igb_check_alt_mac_addr(hw);
 if (ret_val)
  goto out;

 ret_val = igb_read_mac_addr(hw);

out:
 return ret_val;
}
