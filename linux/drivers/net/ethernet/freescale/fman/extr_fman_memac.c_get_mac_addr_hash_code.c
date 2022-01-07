
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;



__attribute__((used)) static u32 get_mac_addr_hash_code(u64 eth_addr)
{
 u64 mask1, mask2;
 u32 xor_val = 0;
 u8 i, j;

 for (i = 0; i < 6; i++) {
  mask1 = eth_addr & (u64)0x01;
  eth_addr >>= 1;

  for (j = 0; j < 7; j++) {
   mask2 = eth_addr & (u64)0x01;
   mask1 ^= mask2;
   eth_addr >>= 1;
  }

  xor_val |= (mask1 << (5 - i));
 }

 return xor_val;
}
