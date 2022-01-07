
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;



__attribute__((used)) static u32 get_nss_from_chainmask(u16 chain_mask)
{
 if ((chain_mask & 0xf) == 0xf)
  return 4;
 else if ((chain_mask & 0x7) == 0x7)
  return 3;
 else if ((chain_mask & 0x3) == 0x3)
  return 2;
 return 1;
}
