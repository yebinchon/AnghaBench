
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;


 int ether_addr_copy (int *,int const*) ;

__attribute__((used)) static inline u64 i40e_addr_to_hkey(const u8 *macaddr)
{
 u64 key = 0;

 ether_addr_copy((u8 *)&key, macaddr);
 return key;
}
