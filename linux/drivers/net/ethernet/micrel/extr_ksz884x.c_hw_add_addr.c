
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ksz_hw {int addr_list_size; int * address; int override_addr; } ;


 int ADDITIONAL_ENTRIES ;
 int ETH_ALEN ;
 scalar_t__ empty_addr (int ) ;
 scalar_t__ ether_addr_equal (int ,int *) ;
 int hw_ena_add_addr (struct ksz_hw*,int,int ) ;
 int memcpy (int ,int *,int ) ;

__attribute__((used)) static int hw_add_addr(struct ksz_hw *hw, u8 *mac_addr)
{
 int i;
 int j = ADDITIONAL_ENTRIES;

 if (ether_addr_equal(hw->override_addr, mac_addr))
  return 0;
 for (i = 0; i < hw->addr_list_size; i++) {
  if (ether_addr_equal(hw->address[i], mac_addr))
   return 0;
  if (ADDITIONAL_ENTRIES == j && empty_addr(hw->address[i]))
   j = i;
 }
 if (j < ADDITIONAL_ENTRIES) {
  memcpy(hw->address[j], mac_addr, ETH_ALEN);
  hw_ena_add_addr(hw, j, hw->address[j]);
  return 0;
 }
 return -1;
}
