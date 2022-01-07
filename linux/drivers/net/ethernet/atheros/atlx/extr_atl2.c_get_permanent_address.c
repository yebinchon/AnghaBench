
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct atl2_hw {int * perm_mac_addr; } ;


 int ATL2_READ_REG (struct atl2_hw*,scalar_t__) ;
 int ETH_ALEN ;
 int LONGSWAP (int) ;
 scalar_t__ REG_MAC_STA_ADDR ;
 scalar_t__ SHORTSWAP (scalar_t__) ;
 int atl2_check_eeprom_exist (struct atl2_hw*) ;
 scalar_t__ atl2_read_eeprom (struct atl2_hw*,int,int*) ;
 scalar_t__ atl2_spi_read (struct atl2_hw*,int,int*) ;
 scalar_t__ is_valid_ether_addr (int *) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int get_permanent_address(struct atl2_hw *hw)
{
 u32 Addr[2];
 u32 i, Control;
 u16 Register;
 u8 EthAddr[ETH_ALEN];
 bool KeyValid;

 if (is_valid_ether_addr(hw->perm_mac_addr))
  return 0;

 Addr[0] = 0;
 Addr[1] = 0;

 if (!atl2_check_eeprom_exist(hw)) {
  Register = 0;
  KeyValid = 0;


  i = 0;
  while (1) {
   if (atl2_read_eeprom(hw, i + 0x100, &Control)) {
    if (KeyValid) {
     if (Register == REG_MAC_STA_ADDR)
      Addr[0] = Control;
     else if (Register ==
      (REG_MAC_STA_ADDR + 4))
      Addr[1] = Control;
     KeyValid = 0;
    } else if ((Control & 0xff) == 0x5A) {
     KeyValid = 1;
     Register = (u16) (Control >> 16);
    } else {

     break;
    }
   } else {
    break;
   }
   i += 4;
  }

  *(u32 *) &EthAddr[2] = LONGSWAP(Addr[0]);
  *(u16 *) &EthAddr[0] = SHORTSWAP(*(u16 *) &Addr[1]);

  if (is_valid_ether_addr(EthAddr)) {
   memcpy(hw->perm_mac_addr, EthAddr, ETH_ALEN);
   return 0;
  }
  return 1;
 }


 Addr[0] = 0;
 Addr[1] = 0;
 Register = 0;
 KeyValid = 0;
 i = 0;
 while (1) {
  if (atl2_spi_read(hw, i + 0x1f000, &Control)) {
   if (KeyValid) {
    if (Register == REG_MAC_STA_ADDR)
     Addr[0] = Control;
    else if (Register == (REG_MAC_STA_ADDR + 4))
     Addr[1] = Control;
    KeyValid = 0;
   } else if ((Control & 0xff) == 0x5A) {
    KeyValid = 1;
    Register = (u16) (Control >> 16);
   } else {
    break;
   }
  } else {
   break;
  }
  i += 4;
 }

 *(u32 *) &EthAddr[2] = LONGSWAP(Addr[0]);
 *(u16 *) &EthAddr[0] = SHORTSWAP(*(u16 *)&Addr[1]);
 if (is_valid_ether_addr(EthAddr)) {
  memcpy(hw->perm_mac_addr, EthAddr, ETH_ALEN);
  return 0;
 }

 Addr[0] = ATL2_READ_REG(hw, REG_MAC_STA_ADDR);
 Addr[1] = ATL2_READ_REG(hw, REG_MAC_STA_ADDR + 4);
 *(u32 *) &EthAddr[2] = LONGSWAP(Addr[0]);
 *(u16 *) &EthAddr[0] = SHORTSWAP(*(u16 *) &Addr[1]);

 if (is_valid_ether_addr(EthAddr)) {
  memcpy(hw->perm_mac_addr, EthAddr, ETH_ALEN);
  return 0;
 }

 return 1;
}
