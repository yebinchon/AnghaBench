
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atl1_hw {scalar_t__ hw_addr; scalar_t__* mac_addr; } ;


 scalar_t__ REG_MAC_STA_ADDR ;
 int iowrite32 (int,scalar_t__) ;

__attribute__((used)) static void atl1_set_mac_addr(struct atl1_hw *hw)
{
 u32 value;





 value = (((u32) hw->mac_addr[2]) << 24) |
     (((u32) hw->mac_addr[3]) << 16) |
     (((u32) hw->mac_addr[4]) << 8) | (((u32) hw->mac_addr[5]));
 iowrite32(value, hw->hw_addr + REG_MAC_STA_ADDR);

 value = (((u32) hw->mac_addr[0]) << 8) | (((u32) hw->mac_addr[1]));
 iowrite32(value, (hw->hw_addr + REG_MAC_STA_ADDR) + (1 << 2));
}
