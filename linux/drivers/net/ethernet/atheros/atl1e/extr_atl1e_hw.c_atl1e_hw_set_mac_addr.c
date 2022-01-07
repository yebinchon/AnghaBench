
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atl1e_hw {scalar_t__* mac_addr; } ;


 int AT_WRITE_REG_ARRAY (struct atl1e_hw*,int ,int,int) ;
 int REG_MAC_STA_ADDR ;

void atl1e_hw_set_mac_addr(struct atl1e_hw *hw)
{
 u32 value;





 value = (((u32)hw->mac_addr[2]) << 24) |
  (((u32)hw->mac_addr[3]) << 16) |
  (((u32)hw->mac_addr[4]) << 8) |
  (((u32)hw->mac_addr[5])) ;
 AT_WRITE_REG_ARRAY(hw, REG_MAC_STA_ADDR, 0, value);

 value = (((u32)hw->mac_addr[0]) << 8) |
  (((u32)hw->mac_addr[1])) ;
 AT_WRITE_REG_ARRAY(hw, REG_MAC_STA_ADDR, 1, value);
}
