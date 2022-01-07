
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u16 ;
struct e1000_hw {int* perm_mac_addr; int mac_type; int* mac_addr; } ;
typedef int s32 ;


 int E1000_ERR_EEPROM ;
 int E1000_STATUS_FUNC_1 ;
 int E1000_SUCCESS ;
 int NODE_ADDRESS_SIZE ;
 int STATUS ;


 scalar_t__ e1000_read_eeprom (struct e1000_hw*,int,int,int*) ;
 int e_dbg (char*) ;
 int er32 (int ) ;

s32 e1000_read_mac_addr(struct e1000_hw *hw)
{
 u16 offset;
 u16 eeprom_data, i;

 for (i = 0; i < NODE_ADDRESS_SIZE; i += 2) {
  offset = i >> 1;
  if (e1000_read_eeprom(hw, offset, 1, &eeprom_data) < 0) {
   e_dbg("EEPROM Read Error\n");
   return -E1000_ERR_EEPROM;
  }
  hw->perm_mac_addr[i] = (u8)(eeprom_data & 0x00FF);
  hw->perm_mac_addr[i + 1] = (u8)(eeprom_data >> 8);
 }

 switch (hw->mac_type) {
 default:
  break;
 case 129:
 case 128:
  if (er32(STATUS) & E1000_STATUS_FUNC_1)
   hw->perm_mac_addr[5] ^= 0x01;
  break;
 }

 for (i = 0; i < NODE_ADDRESS_SIZE; i++)
  hw->mac_addr[i] = hw->perm_mac_addr[i];
 return E1000_SUCCESS;
}
