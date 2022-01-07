
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int ETH_ALEN ;
 int ether_crc (int ,int const*) ;

__attribute__((used)) static unsigned int addr_hash_test(const u32 *mask, const u8 *addr)
{
 int n = ether_crc(ETH_ALEN, addr) >> 26;
 return mask[n >> 5] & (1 << (n & 31));
}
