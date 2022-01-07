
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;


 int BIT_ULL (int) ;
 int __swab64 (int ) ;
 int ether_addr_to_u64 (int const*) ;
 int hweight64 (int) ;

__attribute__((used)) static int enetc_mac_addr_hash_idx(const u8 *addr)
{
 u64 fold = __swab64(ether_addr_to_u64(addr)) >> 16;
 u64 mask = 0;
 int res = 0;
 int i;

 for (i = 0; i < 8; i++)
  mask |= BIT_ULL(i * 6);

 for (i = 0; i < 6; i++)
  res |= (hweight64(fold & (mask << i)) & 0x1) << i;

 return res;
}
