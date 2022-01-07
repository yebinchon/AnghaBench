
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atl2_hw {int* perm_mac_addr; int mac_addr; } ;
typedef int s32 ;


 int ETH_ALEN ;
 scalar_t__ get_permanent_address (struct atl2_hw*) ;
 int memcpy (int ,int*,int ) ;

__attribute__((used)) static s32 atl2_read_mac_addr(struct atl2_hw *hw)
{
 if (get_permanent_address(hw)) {


  hw->perm_mac_addr[0] = 0x00;
  hw->perm_mac_addr[1] = 0x13;
  hw->perm_mac_addr[2] = 0x74;
  hw->perm_mac_addr[3] = 0x00;
  hw->perm_mac_addr[4] = 0x5c;
  hw->perm_mac_addr[5] = 0x38;
 }

 memcpy(hw->mac_addr, hw->perm_mac_addr, ETH_ALEN);

 return 0;
}
