
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static int hash_hw_addr(const u8 * addr)
{
 int hash = 0, octet, bit, i = 0, c;

 for (octet = 0; octet < 6; ++octet)
  for (c = addr[octet], bit = 0; bit < 8; c >>= 1, ++bit) {
   hash ^= (c & 1) << i;
   if (++i == 6)
    i = 0;
  }
 return hash;
}
