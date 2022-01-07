
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atl1e_hw {int perm_mac_addr; int mac_addr; } ;


 int AT_ERR_EEPROM ;
 int atl1e_get_permanent_address (struct atl1e_hw*) ;
 int memcpy (int ,int ,int) ;

int atl1e_read_mac_addr(struct atl1e_hw *hw)
{
 int err = 0;

 err = atl1e_get_permanent_address(hw);
 if (err)
  return AT_ERR_EEPROM;
 memcpy(hw->mac_addr, hw->perm_mac_addr, sizeof(hw->perm_mac_addr));
 return 0;
}
