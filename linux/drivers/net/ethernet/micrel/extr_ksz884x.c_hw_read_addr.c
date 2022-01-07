
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_hw {scalar_t__ id; int * override_addr; int * perm_addr; int mac_override; scalar_t__ io; } ;


 int * DEFAULT_MAC_ADDRESS ;
 int ETH_ALEN ;
 scalar_t__ KS884X_ADDR_0_OFFSET ;
 size_t MAC_ADDR_ORDER (int) ;
 scalar_t__ empty_addr (int *) ;
 int hw_set_addr (struct ksz_hw*) ;
 int memcpy (int *,int *,int) ;
 int readb (scalar_t__) ;

__attribute__((used)) static void hw_read_addr(struct ksz_hw *hw)
{
 int i;

 for (i = 0; i < ETH_ALEN; i++)
  hw->perm_addr[MAC_ADDR_ORDER(i)] = readb(hw->io +
   KS884X_ADDR_0_OFFSET + i);

 if (!hw->mac_override) {
  memcpy(hw->override_addr, hw->perm_addr, ETH_ALEN);
  if (empty_addr(hw->override_addr)) {
   memcpy(hw->perm_addr, DEFAULT_MAC_ADDRESS, ETH_ALEN);
   memcpy(hw->override_addr, DEFAULT_MAC_ADDRESS,
          ETH_ALEN);
   hw->override_addr[5] += hw->id;
   hw_set_addr(hw);
  }
 }
}
