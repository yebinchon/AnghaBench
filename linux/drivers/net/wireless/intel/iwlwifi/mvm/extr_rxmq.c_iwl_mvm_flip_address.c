
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ETH_ALEN ;
 int ether_addr_copy (int *,int *) ;

__attribute__((used)) static void iwl_mvm_flip_address(u8 *addr)
{
 int i;
 u8 mac_addr[ETH_ALEN];

 for (i = 0; i < ETH_ALEN; i++)
  mac_addr[i] = addr[ETH_ALEN - i - 1];
 ether_addr_copy(addr, mac_addr);
}
