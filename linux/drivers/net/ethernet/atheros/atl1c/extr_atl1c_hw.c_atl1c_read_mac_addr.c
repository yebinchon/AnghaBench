
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atl1c_hw {int perm_mac_addr; int mac_addr; } ;


 int atl1c_get_permanent_address (struct atl1c_hw*) ;
 int eth_random_addr (int ) ;
 int memcpy (int ,int ,int) ;

int atl1c_read_mac_addr(struct atl1c_hw *hw)
{
 int err = 0;

 err = atl1c_get_permanent_address(hw);
 if (err)
  eth_random_addr(hw->perm_mac_addr);

 memcpy(hw->mac_addr, hw->perm_mac_addr, sizeof(hw->perm_mac_addr));
 return err;
}
